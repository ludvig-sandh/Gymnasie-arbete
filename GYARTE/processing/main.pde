void setup() {
  size(800, 600);
  background(0);
  
  cube.display();
  
  for (int i = 0; i < 150; i++) {
    stats[i] = 0;
  }
}

Cube cube = new Cube();

void draw() {
  frameRate(60);
}

int[] stats = new int[150];

Boolean pressed = false;

void keyPressed() {
  if (pressed == false) {
    
    pressed = true;
    switch (key) {
      case 'r':
        cube.r();
        break;
      case 'R':
        cube.rPrime();
        break;
      case 'l':
        cube.l();
        break;
      case 'L':
        cube.lPrime();
        break;
      case 'f':
        cube.f();
        break;
      case 'F':
        cube.fPrime();
        break;
      case 'b':
        cube.b();
        break;
      case 'B':
        cube.bPrime();
        break;
      case 'u':
        cube.u();
        break;
      case 'U':
        cube.uPrime();
        break;
      case 'd':
        cube.d();
        break;
      case 'D':
        cube.dPrime();
        break;
      case 'p':
        print("\n" + cube.getScramble());
        break;
      case 's':
        cube.getSolution(true);
        break;
      case 'i':
        cube.insertScramble("BFFBURUDULFRDRLFBRBLBFFBLLLUUDDDUDRDLLFBLURRFUDDFBRBUF"); //Sample scramble
        break;
      case '1':
        cube.getCrossSolution();
        break;
      case '2':
        cube.getF2LSolution();
        break;
      case '3':
        cube.getOLLSolution();
        break;
      case '4':
        cube.getPLLSolution();
        break;
      case 't': //Calculate statistics on a certain number of solves on random states
        int sum = 0;
        int highest = -1;
        int lowest = -1;
        int iterations = 10000; //The number of solves to be included in the statistics
        for (int i = 0; i < iterations; i++) {
          if (i % (iterations / 100) == 0) {
            print("\n" + String.valueOf(int(float(i) / float(iterations) * 100) + "% done"));
          }
          scrambleCube();
          String solution = cube.getSolution(false);
          int len = solution.split(" ").length;
          
          stats[len] += 1;
          
          sum += len;
          if (len < lowest || lowest == -1) {
            lowest = len;
          }
          if (len > highest || highest == -1) {
            highest = len;
          }
        }
        
        println("\n\nStatistics over solution lengths for " + String.valueOf(iterations) + " solved cubes:");
        float avg = parseFloat(sum) / iterations;
        print("\nAVERAGE: ");
        println(avg);
        print("LOWEST: ");
        println(lowest);
        print("HIGHEST: ");
        println(highest);
        break;
      case 'y': //Visualize the statistics (after they have been calculated with 't')
        int start = 0;
        for (int i = 0; i < 150; i++) {
          if (stats[i] != 0) {
            start = i;
            break;
          }
        }
        
        int end = 150;
        for (int i = 0; i < 150; i++) {
          if (stats[149 - i] != 0) {
            end = 150 - i;
            break;
          }
        }
        
        int pillars = end - start;
        float xpart = width / float(pillars);
        background(0);
        fill(255);
        stroke(0);
        
        int mostFrequent = -1;
        for (int i = 0; i < stats.length; i++) {
          if (stats[i] > mostFrequent) {
            mostFrequent = stats[i];
          }
        }
        
        for (int i = 0; i < pillars; i++) {
          float heightY = map(stats[start + i], 0, mostFrequent, 0, height - 30);
          
          print(heightY);
          print("\n");
          
          rect(xpart * i, height - heightY, xpart, height);
          if (i % 2 == 0) {
            text(String.valueOf(i + start), xpart * i, 10);
          }else {
            text(String.valueOf(i + start), xpart * i, 20);
          }
        }
        break;
    }
    if (key != 's' && key != 'y') {
      cube.display();
    }
  }
}

void scrambleCube() {
  for (int i = 0; i < 50; i++) {
    int r = int(random(18));
    if (r == 0) {
      cube.r();
    }else if (r == 1) {
      cube.r();
      cube.r();
    }else if (r == 2) {
      cube.rPrime();
    }else if (r == 3) {
      cube.f();
    }else if (r == 4) {
      cube.f();
      cube.f();
    }else if (r == 5) {
      cube.fPrime();
    }else if (r == 6) {
      cube.d();
    }else if (r == 7) {
      cube.f();
      cube.f();
    }else if (r == 8) {
      cube.fPrime();
    }else if (r == 9) {
      cube.d();
    }else if (r == 10) {
      cube.d();
      cube.d();
    }else if (r == 11) {
      cube.dPrime();
    }else if (r == 12) {
      cube.l();
    }else if (r == 13) {
      cube.l();
      cube.l();
    }else if (r == 14) {
      cube.lPrime();
    }else if (r == 15) {
      cube.b();
    }else if (r == 16) {
      cube.b();
      cube.b();
    }else if (r == 17) {
      cube.bPrime();
    }
  }
}

void keyReleased() {
  pressed = false;
}
