public class Cube {
  int cubeSize = 3;
  String[][] tiles = new String[cubeSize * 4][];
  String[][] solvedTiles = new String[cubeSize * 4][];
  int[][][] casesOLL = {
    {{0, 0, 1, 0, 0}, {1, 0, 0, 0, 1}, {1, 0, 1, 0, 1}, {1, 0, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 1, 1, 1, 0}, {0, 0, 0, 0, 0}, {1, 0, 1, 0, 1}, {1, 0, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 0, 1}, {1, 0, 1, 0, 1}, {1, 0, 0, 0, 0}, {0, 0, 1, 1, 0}}, 
    {{0, 0, 1, 0, 0}, {1, 0, 0, 1, 0}, {1, 0, 1, 0, 1}, {0, 0, 0, 0, 1}, {0, 1, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {1, 0, 1, 0, 1}, {0, 0, 0, 0, 0}, {0, 1, 1, 1, 0}}, 
    
    {{0, 0, 1, 0, 0}, {1, 0, 0, 0, 1}, {1, 0, 1, 0, 1}, {0, 1, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}, {1, 0, 1, 0, 1}, {1, 0, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {1, 0, 1, 0, 1}, {0, 1, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 0, 1, 0}, {1, 0, 1, 0, 0}, {0, 1, 1, 0, 1}, {1, 0, 0, 0, 0}, {0, 0, 1, 1, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 1}, {1, 0, 1, 1, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 0, 0}}, 
    
    {{0, 1, 1, 1, 0}, {0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 1, 1, 1, 0}, {0, 0, 0, 0, 0}, {1, 0, 1, 1, 0}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 0, 1}, {0, 0, 1, 0, 1}, {0, 1, 0, 0, 0}}, 
    {{0, 0, 1, 1, 0}, {1, 0, 0, 0, 0}, {1, 0, 1, 1, 0}, {1, 0, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    {{0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 1, 1, 0, 1}, {1, 0, 0, 0, 0}, {0, 0, 1, 1, 0}}, 
    
    {{0, 0, 0, 0, 0}, {1, 0, 1, 1, 0}, {1, 0, 1, 1, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}, {1, 0, 1, 1, 0}, {1, 0, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    {{0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 0, 1, 0, 1}, {0, 1, 0, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 0, 1}, {1, 0, 1, 1, 0}, {0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    {{0, 0, 1, 1, 0}, {1, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}}, 
    
    {{0, 0, 0, 1, 0}, {1, 0, 1, 0, 0}, {0, 1, 1, 0, 1}, {0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 1}, {1, 0, 1, 1, 0}, {0, 1, 0, 0, 0}, {0, 0, 1, 1, 0}}, 
    {{0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 1, 1, 0, 1}, {0, 1, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 0, 0, 0}, {1, 0, 1, 1, 0}, {1, 0, 1, 1, 0}, {1, 0, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 1, 0}, {1, 0, 1, 1, 0}, {0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}}, 
    
    {{0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}, {0, 1, 1, 0, 1}, {0, 1, 0, 0, 0}, {0, 0, 1, 1, 0}},
    {{0, 0, 1, 0, 0}, {0, 1, 0, 0, 1}, {1, 0, 1, 1, 0}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}},
    {{0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 1, 1, 0, 1}, {0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 0, 1}, {0, 1, 1, 0, 1}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {1, 0, 0, 1, 0}, {1, 0, 1, 1, 0}, {0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {0, 1, 1, 0, 1}, {1, 0, 1, 0, 1}, {0, 0, 0, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {1, 0, 1, 1, 0}, {1, 0, 1, 0, 1}, {0, 0, 0, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {0, 1, 1, 0, 1}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {1, 0, 1, 1, 0}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {1, 0, 1, 1, 0}, {0, 1, 1, 1, 0}, {0, 0, 0, 0, 0}}, 
    
    {{0, 1, 1, 0, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 1, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {1, 0, 0, 0, 1}, {0, 1, 1, 1, 0}, {1, 0, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 1}, {1, 0, 1, 0, 1}, {0, 0, 1, 0, 1}, {0, 1, 0, 0, 0}}, 
    {{0, 0, 0, 0, 0}, {1, 0, 1, 0, 1}, {1, 0, 1, 0, 1}, {1, 0, 1, 0, 1}, {0, 0, 0, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 1, 0}, {1, 0, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    
    {{0, 0, 1, 1, 0}, {1, 0, 0, 0, 0}, {0, 1, 1, 1, 0}, {0, 1, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 0, 1}, {0, 1, 1, 1, 0}, {0, 1, 0, 0, 0}, {0, 0, 1, 1, 0}}, 
    {{0, 0, 1, 1, 0}, {1, 0, 0, 0, 0}, {0, 1, 1, 1, 0}, {0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}, {0, 1, 1, 1, 0}, {0, 0, 0, 1, 0}, {0, 1, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {1, 0, 0, 1, 0}, {0, 1, 1, 1, 0}, {1, 0, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    
    {{0, 0, 1, 0, 0}, {1, 0, 0, 0, 1}, {0, 1, 1, 1, 0}, {0, 1, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {1, 0, 1, 0, 1}, {0, 1, 1, 0, 1}, {0, 0, 0, 0, 0}}, 
    {{0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}, {0, 1, 1, 1, 0}, {1, 0, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    {{0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}, {0, 1, 1, 1, 0}, {0, 1, 0, 0, 1}, {0, 0, 1, 0, 0}}, 
    {{0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}, {0, 1, 1, 1, 0}, {0, 1, 0, 1, 0}, {0, 0, 1, 0, 0}}, 
    
    {{0, 1, 0, 1, 0}, {0, 0, 1, 0, 0}, {0, 1, 1, 1, 0}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 0, 0, 1, 0}, {1, 0, 1, 0, 0}, {0, 1, 1, 1, 0}, {1, 0, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 1}, {0, 1, 1, 1, 0}, {0, 1, 1, 0, 0}, {0, 0, 0, 1, 0}}, 
    {{0, 0, 0, 1, 0}, {1, 0, 1, 0, 0}, {0, 1, 1, 1, 0}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}}, 
    {{0, 0, 0, 0, 0}, {0, 1, 1, 0, 1}, {0, 1, 1, 1, 0}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}}, 
    
    {{0, 0, 0, 0, 0}, {0, 1, 1, 1, 0}, {0, 1, 1, 1, 0}, {0, 0, 1, 0, 0}, {0, 1, 0, 1, 0}}, 
    {{0, 1, 0, 0, 0}, {0, 0, 1, 1, 0}, {0, 1, 1, 1, 0}, {0, 0, 1, 1, 0}, {0, 1, 0, 0, 0}},
    {{0, 0, 0, 0, 0}, {0, 1, 1, 1, 0}, {0, 1, 1, 1, 0}, {0, 1, 1, 1, 0}, {0, 0, 0, 0, 0}}
  };
  
  String[] solutionsOLL = {
    "R U2 R2 F R F' U2 R' F R F'",
    "R' F' R U2 L' U2 L U2 R' F R",
    "F U R U' R' F' U F R U R' U' F'",
    "F' U' L' U L F U F R U R' U' F'",
    "F R' F' R U R U' R' U F R U R' U' F'",
    "F R' F' R U R U' R' U' F R U R' U' F'",
    "R U R' U R' F R F' U2 R' F R F'",
    "L' R B R B R' B' L2 R2 F R F' L'",
    "F R U R' U' R U R' U' F'",
    "F' L' U' L U L' U' L U F", //10
    "L' B' L R' U' R U R' U' R U L' B L",
    "R B R' L U L' U' L U L' U' R B' R'",
    "R B' R2 F R2 B R2 F' R",
    "L' B L2 F' L2 B' L2 F L'",
    "R' F2 L F L' F R",
    "L F2 R' F' R F' L'",
    "R B L' B L B2 R'",
    "L' B' R B' R' B2 L",
    "L' R2 B R' B R B2 R' B L R'",
    "L2 R B' L B' L' B2 L B' L R'", //20
    "R U R' U' R' F R R U R' U' F'",
    "L' U' L U L F' L' L' U' L U F",
    "F U R U' R' F'",
    "F' U' L' U L F",
    "R' U' F U R U' R' F' R",
    "L U F' U' L' U L F L'",
    "R U2 R2 F R F' R U2 R'",
    "F R U' R' U' R U R' F'",
    "R' U' R U' R' U R U R B' R' B",
    "L U L' U L U' L' U' L' B L B'", //30
    "L' R B R B R' B' R' U R U' L R'",
    "L' R B' L' B' L B L U' L' U L R'",
    "L' U L U2 L' U' B' U B U L",
    "R U' R' U2 R U B U' B' U' R'",
    "L R' F L' R U2 L R' F L' R",
    "F U R U' R' U R U' R' F'",
    "L' B' L U' R' U R U' R' U R L' B L",
    "R U R' U R U' B U' B' R'",
    "R U2 R2 U' R U' R' U2 F R F'",
    "L' B' L R' U' R U L' B L", //40
    "R B R' L U L' U' R B' R'",
    "L F' L' U' L F L' F' U F",
    "R' F R U R' F' R F U' F'",
    "R U R' U' R' F R F'",
    "F R U R' U' F'",
    "R U R' U' B' R' F R F' B",
    "R' U' R' F R F' U R",
    "R' F R U R' U' F' U R",
    "L F' L' U' L U F U' L'",
    "R U R' U' L R' F R F' L'", //50
    "F R U R' U' R U R' U' R U R' U' F'",
    "R U2 R2 U' R2 U' R2 U2 R",
    "R U R' U R U2 R'",
    "L' U' L U' L' U2 L",
    "R' F R B' R' F' R B",
    "R2 D R' U2 R D' R' U2 R'",
    "L F R' F' L' F R F'",
    ""
  };
  
  /*
  0 7 6
  1   5
  2 3 4
  */
  
  int[][] casesPLL = {
    {-1, 5, -1, 1, -1, 3, -1, -1},
    {-1, 3, -1, 5, -1, 1, -1, -1},
    {-1, 3, -1, 1, -1, 7, -1, 5},
    {-1, 5, -1, 7, -1, 1, -1, 3},
    {4, -1, -1, -1, 6, -1, 0, -1},
    {-1, -1, 6, -1, 2, -1, 4, -1},
    {2, -1, 0, -1, 6, -1, 4, -1},
    {-1, 5, -1, -1, 6, 1, 4, -1},
    {-1, -1, -1, 7, 6, -1, 4, 3},
    {6, 7, -1, -1, -1, -1, 0, 1},
    {-1, -1, -1, 5, 6, 3, 4, -1},
    {6, 3, -1, 1, -1, -1, 0, -1},
    {6, -1, -1, 5, -1, 3, 0, -1},
    {4, -1, -1, -1, 0, 7, -1, 5},
    {4, 7, -1, -1, 0, -1, -1, 1},
    {4, -1, -1, 7, 0, -1, -1, 3},
    {-1, -1, 6, 7, -1, -1, 2, 3},
    {2, 7, 6, -1, -1, 1, 0, 5},
    {6, -1, -1, 5, 0, 7, 4, 3},
    {4, 3, 0, 5, 2, 1, -1, -1},
    {2, 7, 6, 1, -1, -1, 0, 3},
    {-1, -1, -1, -1, -1, -1, -1, -1}
  };
  
  String[] solutionsPLL = {
    "R U' R U R U R U' R' U' R2",
    "R2 U R U R' U' R' U' R' U R'",
    "R' U' R U' R U R U' R' U R U R2 U' R' U",
    "L2 R2 D L2 R2 U2 L2 R2 D L2 R2",
    "R' F R' B2 R F' R' B2 R2",
    "R B' R F2 R' B R F2 R2",
    "R B' R' F R B R' F' R B R' F R B' R' F'",
    "R U R' U' R' F R2 U' R' U' R U R' F'",
    "R' U' F' R U R' U' R' F R2 U' R' U' R U R' U R",
    "R' U L' U2 R U' R' U2 L R U'",
    "R U R' F' R U R' U' R' F R2 U' R' U'",
    "L U2 L' U2 L F' L' U' L U L F L2 U",
    "R' U2 R U2 R' F R U R' U' R' F' R2 U'",
    "R' U R' U' B' R' B2 U' B' U B' R B R",
    "F R U' R' U' R U R' F' R U R' U' R' F R F'",
    "L U' R U2 L' U R' L U' R U2 L' U R' U",
    "R' U L' U2 R U' L R' U L' U2 R U' L U'",
    "R2 D B' U B' U' B D' R2 F' U F",
    "L' U' L F2 D R' U R U' R D' F2",
    "R2 D' F U' F U F' D R2 B U' B'",
    "R U R' F2 D' L U' L' U L' D F2",
    ""
  };

  //Initialize new cube and fill its tiles with solved tiles
  public Cube() {
    for (int x = 0; x < tiles.length; x++) {
      tiles[x] = new String[cubeSize * 3];
      solvedTiles[x] = new String[cubeSize * 3];
      for (int y = 0; y < tiles[x].length; y++) {
        switch (x / 3) {
        case 0:
          if (y / 3 == 1) {
            tiles[x][y] = "L";
            solvedTiles[x][y] = "L";
          } else {
            tiles[x][y] = "E";
            solvedTiles[x][y] = "E";
          }
          break;
        case 1:
          switch (y / 3) {
          case 0:
            tiles[x][y] = "U";
            solvedTiles[x][y] = "U";
            break;
          case 1:
            tiles[x][y] = "F";
            solvedTiles[x][y] = "F";
            break;
          case 2:
            tiles[x][y] = "D";
            solvedTiles[x][y] = "D";
            break;
          }
          break;
        case 2:
          if (y / 3 == 1) {
            tiles[x][y] = "R";
            solvedTiles[x][y] = "R";
          } else {
            tiles[x][y] = "E";
            solvedTiles[x][y] = "E";
          }
          break;
        case 3:
          if (y / 3 == 1) {
            tiles[x][y] = "B";
            solvedTiles[x][y] = "B";
          } else {
            tiles[x][y] = "E";
            solvedTiles[x][y] = "E";
          }
          break;
        }
      }
    }
  }

  //Shows a visual representation of a cube (folded out)
  public void display() {
    float tileSize = width / float(4 * cubeSize);
    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        switch (tiles[x][y]) {
        case "U":
          fill(255);
          break;
        case "F":
          fill(0, 255, 0);
          break;
        case "L":
          fill(255, 165, 0);
          break;
        case "R":
          fill(255, 0, 0);
          break;
        case "B":
          fill(5, 61, 255);
          break;
        case "D":
          fill(255, 255, 0);
          break;
        default:
          fill(100, 100, 100);
          break;
        }
        rect(x * tileSize, y * tileSize, tileSize, tileSize);
      }
    }
  }

  private void performMoves(String stringMoves) {
    String[] moves = stringMoves.split(" ");
    for (int i = 0; i < moves.length; i++) {
      switch (moves[i]) {
      case "R":
        r();
        break;
      case "R'":
        rPrime();
        break;
      case "R2":
        r2();
        break;
      case "L":
        l();
        break;
      case "L'":
        lPrime();
        break;
      case "L2":
        l2();
        break;
      case "F":
        f();
        break;
      case "F'":
        fPrime();
        break;
      case "F2":
        f2();
        break;
      case "U":
        u();
        break;
      case "U'":
        uPrime();
        break;
      case "U2":
        u2();
        break;
      case "D":
        d();
        break;
      case "D'":
        dPrime();
        break;
      case "D2":
        d2();
        break;
      case "B":
        b();
        break;
      case "B'":
        bPrime();
        break;
      case "B2":
        b2();
        break;
      default:
        break;
      }
    }
  }

  private Boolean isEdgePiece(int x, int y) {
    if (x % 3 == 0 && y % 3 == 1) {
      return true;
    } else if (x % 3 == 1 && y % 3 == 0) {
      return true;
    } else if (x % 3 == 1 && y % 3 == 2) {
      return true;
    } else if (x % 3 == 2 && y % 3 == 1) {
      return true;
    }
    return false;
  }

  private Boolean isCornerPiece(int x, int y) {
    if (x % 3 != 1 && y % 3 != 1) {
      return true;
    }
    return false;
  }

  private int[] getEdgeCorrespondingPosition(int[] pos) {
    int[][][] edges = {
      {{1, 3}, {3, 1}}, 
      {{4, 3}, {4, 2}}, 
      {{7, 3}, {5, 1}}, 
      {{10, 3}, {4, 0}}, 
      {{3, 4}, {2, 4}}, 
      {{0, 4}, {11, 4}}, 
      {{9, 4}, {8, 4}}, 
      {{6, 4}, {5, 4}}, 
      {{1, 5}, {3, 7}}, 
      {{4, 5}, {4, 6}}, 
      {{7, 5}, {5, 7}}, 
      {{10, 5}, {4, 8}}
    };

    int[] notFound = {-1, -1};

    if (pos.length == 0) {
      return notFound;
    }
    int[] edge = {pos[0], pos[1]};

    for (int i = 0; i < edges.length; i++) {
      if (edges[i][0][0] == edge[0] && edges[i][0][1] == edge[1]) {
        return edges[i][1];
      } else if (edges[i][1][0] == edge[0] && edges[i][1][1] == edge[1]) {
        return edges[i][0];
      }
    }
    return notFound;
  }

  private int[] getPositionOnFace(int[] pos) {
    int[] facePosition = {pos[0] % 3, pos[1] % 3};
    return facePosition;
  }

  private int[] getFace(int[] pos) {
    int[] face = {pos[0] / 3, pos[1] / 3};
    return face;
  }

  //Diagram over the 2d array of the cube's tiles

  // 0 1 2  3 4 5  6 7 8  9 10 11
  // 1 0 0  0 0 0  0 0 0  0 0  0
  // 2 0 0  0 0 0  0 0 0  0 0  0

  // 3 0 0  0 0 0  0 0 0  0 0  0
  // 4 0 0  0 0 0  0 0 0  0 0  0
  // 5 0 0  0 0 0  0 0 0  0 0  0

  // 6 0 0  0 0 0  0 0 0  0 0  0
  // 7 0 0  0 0 0  0 0 0  0 0  0
  // 8 0 0  0 0 0  0 0 0  0 0  0

  private int[][] getCrossEdgePositions() {
    int[][] crossEdgePositions = new int[4][];
    int foundPosition = 0;

    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        if (tiles[x][y].equals("D") && isEdgePiece(x, y)) {
          int[] tilePosition = {x, y};
          crossEdgePositions[foundPosition] = tilePosition;
          foundPosition += 1;
        }
      }
    }

    return crossEdgePositions;
  }

  private int getLayer(int[] pos) {
    if (pos[1] == 4) {
      return 2;
    } else if (pos[1] < 4) {
      return 3;
    }
    return 1;
  }

  private Boolean edgePieceIsSolved(int[] pos) {
    if (tiles[pos[0]][pos[1]] == solvedTiles[pos[0]][pos[1]]) {
      int[] pos2 = getEdgeCorrespondingPosition(pos);
      if (tiles[pos2[0]][pos2[1]] == solvedTiles[pos2[0]][pos2[1]]) {
        return true;
      }
    }
    return false;
  }

  public Boolean edgePieceIsFlipped(int[] pos) {
    int[] pos2 = getEdgeCorrespondingPosition(pos);
    if (tiles[pos[0]][pos[1]] == solvedTiles[pos2[0]][pos2[1]]) {
      if (tiles[pos2[0]][pos2[1]] == solvedTiles[pos[0]][pos[1]]) {
        return true;
      }
    }
    return false;
  }

  private String convertMoveY(String move) {
    switch (move) {
    case "R":
      return "B";
    case "L":
      return "F";
    case "F":
      return "R";
    case "B":
      return "L";
    case "U":
      return "U";
    case "D":
      return "D";
    }
    return "";
  }
  
  private String convertMovesY(String stringMoves) {
    String[] moves = stringMoves.split(" ");
    String[] convertedMoves = new String[moves.length];
    for (int i = 0; i < moves.length; i++) {
      String adder = "";
      if (moves[i].length() > 1) {
        adder = String.valueOf(moves[i].charAt(1));
      }
      convertedMoves[i] = convertMoveY(String.valueOf(moves[i].charAt(0))) + adder;
    }
    return String.join(" ", convertedMoves);
  }

  private int[] getCoordsOfCorrectEdgePos(int[] pos) {
    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        if (solvedTiles[x][y] == tiles[pos[0]][pos[1]]) {
          int[] solvedEdge = {x, y};
          int[] corrSolvedEdge = getEdgeCorrespondingPosition(solvedEdge);
          if (corrSolvedEdge[0] != -1 && corrSolvedEdge[1] != 1) {
            int[] corrEdge = getEdgeCorrespondingPosition(pos);
            if (solvedTiles[corrSolvedEdge[0]][corrSolvedEdge[1]] == tiles[corrEdge[0]][corrEdge[1]]) {
              return solvedEdge;
            }
          }
        }
      }
    }
    int[] defaultCoords = {-1, -1};
    return defaultCoords;
  }

  private String getCrossSolution() {
    String solution = "";
    String solutionAdd = "";
    Boolean allDone = false;

    while (!allDone) {
      solution += solutionAdd;
      performMoves(solutionAdd);
      solutionAdd = "";
      int[][] crossEdgePositions = getCrossEdgePositions();

      for (int i = 0; i < crossEdgePositions.length; i++) {
        int[] edge = crossEdgePositions[i];
        int layer = getLayer(edge);
        if (layer == 1) {
          int[] dFace = {1, 2};
          if (edgePieceIsSolved(edge)) {
            if (i == crossEdgePositions.length - 1) {
              allDone = true;
              break;
            }
          } else if (getFace(edge)[0] == dFace[0] && getFace(edge)[1] == dFace[1]) { //If an edge is oriented at bottom but not permuted 
            int[] correspondingEdge = getEdgeCorrespondingPosition(edge);
            int[] correspondingFace = getFace(correspondingEdge);
            int[] correctEdgePos = getCoordsOfCorrectEdgePos(edge);
            int[] correctCorrespondingEdgePos = getEdgeCorrespondingPosition(correctEdgePos);
            int[] correctFace = getFace(correctCorrespondingEdgePos);
            int dif = correctFace[0] - correspondingFace[0];
            String moveUpPiece = "L2";
            for (int j = 0; j < correspondingFace[0]; j++) {
              moveUpPiece = convertMovesY(moveUpPiece);
            }
            if (dif < 0) {
              dif += 4;
            }
            if (dif == 1) {
              moveUpPiece += " U'";
            } else if (dif == 2) {
              moveUpPiece += " U2";
            } else if (dif == 3) {
              moveUpPiece += " U";
            }
            String moveDownPiece = "L2";
            for (int j = 0; j < correctFace[0]; j++) {
              moveDownPiece = convertMovesY(moveDownPiece);
            }
            String edgePieceSolution = moveUpPiece + " " + moveDownPiece;
            solutionAdd += edgePieceSolution + " ";
            break;
          } else if (edgePieceIsFlipped(edge)) { //If an edge is permuted on the bottom but not oriented
            String edgePieceSolution = "F' D R' D'";
            int[] correspondingEdge = getEdgeCorrespondingPosition(edge);
            switch (tiles[correspondingEdge[0]][correspondingEdge[1]]) {
            case "R":
              edgePieceSolution = convertMovesY(edgePieceSolution);
              break;
            case "B":
              edgePieceSolution = convertMovesY(edgePieceSolution);
              edgePieceSolution = convertMovesY(edgePieceSolution);
              break;
            case "L":
              edgePieceSolution = convertMovesY(edgePieceSolution);
              edgePieceSolution = convertMovesY(edgePieceSolution);
              edgePieceSolution = convertMovesY(edgePieceSolution);
              break;
            }
            solutionAdd += edgePieceSolution + " ";
            break;
          } else if (getFace(edge)[1] == 1) { //If an edge neither is permuted or oriented
            String moveUpPiece = "L2";
            int[] correspondingEdge = getEdgeCorrespondingPosition(edge);
            int[] correctEdgePos = getCoordsOfCorrectEdgePos(correspondingEdge);
            int[] correctFace = getFace(correctEdgePos);
            for (int j = 0; j < getFace(edge)[0]; j++) {
              moveUpPiece = convertMovesY(moveUpPiece);
            }

            int dif = correctFace[0] - getFace(edge)[0];
            if (dif < 0) {
              dif += 4;
            }
            if (dif == 1) {
              moveUpPiece += " U2";
            } else if (dif == 2) {
              moveUpPiece += " U";
            } else if (dif == 0) {
              moveUpPiece += " U'";
            }
            String moveDownPiece = "F' L F";
            for (int j = 0; j < correctFace[0]; j++) {
              moveDownPiece = convertMovesY(moveDownPiece);
            }

            solutionAdd += moveUpPiece + " " + moveDownPiece + " ";
            break;
          }
        } else if (layer == 2) {
          int[] correspondingEdge = getEdgeCorrespondingPosition(edge);
          if (tiles[correspondingEdge[0]][correspondingEdge[1]] == solvedTiles[correspondingEdge[0]][correspondingEdge[1]]) { //If the edge just needs to go down
            String edgePieceSolution = "";
            if (getPositionOnFace(edge)[0] == 0) {
              edgePieceSolution = "B";
            } else if (getPositionOnFace(edge)[0] == 2) {
              edgePieceSolution = "F'";
            }
            for (int j = 0; j < getFace(edge)[0]; j++) {
              edgePieceSolution = convertMovesY(edgePieceSolution);
            }

            solutionAdd += edgePieceSolution + " ";
            break;
          } else { //If the edge would go down incorrectly
            String moveUpPiece = "";
            if (getPositionOnFace(edge)[0] == 0) {
              moveUpPiece = "B' U' B";
            } else if (getPositionOnFace(edge)[0] == 2) {
              moveUpPiece = "F U F'";
            }
            for (int j = 0; j < getFace(edge)[0]; j++) {
              moveUpPiece = convertMovesY(moveUpPiece);
            }

            int[] correctEdgePos = getCoordsOfCorrectEdgePos(edge);
            int[] correctCorrespondingEdgePos = getEdgeCorrespondingPosition(correctEdgePos);
            int[] correctFace = getFace(correctCorrespondingEdgePos);
            int dif = correctFace[0] - getFace(edge)[0];

            if (dif < 0) {
              dif += 4;
            }
            if (dif == 1) {
              moveUpPiece += " U'";
            } else if (dif == 2) {
              moveUpPiece += " U2";
            } else if (dif == 3) {
              moveUpPiece += " U";
            }
            String moveDownPiece = "L2";
            for (int j = 0; j < correctFace[0]; j++) {
              moveDownPiece = convertMovesY(moveDownPiece);
            }
            String edgePieceSolution = moveUpPiece + " " + moveDownPiece;
            solutionAdd += edgePieceSolution + " ";
            break;
          }
        } else if (layer == 3) {
          int[] edgeFace = getFace(edge);
          int[] correspondingEdge = getEdgeCorrespondingPosition(edge);
          int[] correspondingFace = getFace(correspondingEdge);
          int[] correctEdgePos = getCoordsOfCorrectEdgePos(edge);
          int[] correctCorrespondingEdgePos = getEdgeCorrespondingPosition(correctEdgePos);
          int[] correctFace = getFace(correctCorrespondingEdgePos);

          if (edgeFace[1] == 0) { //If the edge is on top side

            String moveUpPiece = "";
            int dif = correctFace[0] - correspondingFace[0];

            if (dif < 0) {
              dif += 4;
            }
            if (dif == 1) {
              moveUpPiece = "U'";
            } else if (dif == 2) {
              moveUpPiece = "U2";
            } else if (dif == 3) {
              moveUpPiece = "U";
            }

            String moveDownPiece = "L2";
            for (int j = 0; j < correctFace[0]; j++) {
              moveDownPiece = convertMovesY(moveDownPiece);
            }
            String edgePieceSolution = moveUpPiece + " " + moveDownPiece;
            solutionAdd += edgePieceSolution + " ";
            break;
          } else { //If the edge is on the side of top layer

            String moveUpPiece = "F' L F L'";
            for (int j = 0; j < getFace(edge)[0]; j++) {
              moveUpPiece = convertMovesY(moveUpPiece);
            }

            int dif = correctFace[0] - getFace(edge)[0] - 1;
            if (dif < 0) {
              dif += 4;
            }
            if (dif == 1) {
              moveUpPiece += " U'";
            } else if (dif == 2) {
              moveUpPiece += " U2";
            } else if (dif == 3) {
              moveUpPiece += " U";
            }

            String moveDownPiece = "L2";
            for (int j = 0; j < correctFace[0]; j++) {
              moveDownPiece = convertMovesY(moveDownPiece);
            }

            String edgePieceSolution = moveUpPiece + " " + moveDownPiece;
            solutionAdd += edgePieceSolution + " ";
            break;
          }
        }
      }
    }

    return solution;
  }

  //Diagram over the 2d array of the cube's tiles

  // 0 1 2  3 4 5  6 7 8  9 10 11
  // 1 0 0  0 0 0  0 0 0  0 0  0
  // 2 0 0  0 0 0  0 0 0  0 0  0

  // 3 0 0  0 0 0  0 0 0  0 0  0
  // 4 0 0  0 0 0  0 0 0  0 0  0
  // 5 0 0  0 0 0  0 0 0  0 0  0

  // 6 0 0  0 0 0  0 0 0  0 0  0
  // 7 0 0  0 0 0  0 0 0  0 0  0
  // 8 0 0  0 0 0  0 0 0  0 0  0

  private int[] getNextCornerPiecePos(int[] pos) {
    int[][][] corners = {
      {{3, 2}, {3, 3}, {2, 3}}, 
      {{5, 2}, {6, 3}, {5, 3}}, 
      {{5, 0}, {9, 3}, {8, 3}}, 
      {{3, 0}, {0, 3}, {11, 3}}, 
      {{3, 6}, {2, 5}, {3, 5}}, 
      {{5, 6}, {5, 5}, {6, 5}}, 
      {{3, 8}, {11, 5}, {0, 5}}, 
      {{5, 8}, {8, 5}, {9, 5}}
    };

    for (int i = 0; i < corners.length; i++) {
      if (corners[i][0][0] == pos[0] && corners[i][0][1] == pos[1]) {
        return corners[i][1];
      } else if (corners[i][1][0] == pos[0] && corners[i][1][1] == pos[1]) {
        return corners[i][2];
      } else if (corners[i][2][0] == pos[0] && corners[i][2][1] == pos[1]) {
        return corners[i][0];
      }
    }

    int[] notFound = {-1, -1};
    return notFound;
  }

  private Boolean cornerPieceIsSolved(int[] pos) {
    int[] pos2 = getNextCornerPiecePos(pos);
    int[] pos3 = getNextCornerPiecePos(pos2);

    if (tiles[pos[0]][pos[1]] == solvedTiles[pos[0]][pos[1]]) {
      if (tiles[pos2[0]][pos2[1]] == solvedTiles[pos2[0]][pos2[1]]) {
        if (tiles[pos3[0]][pos3[1]] == solvedTiles[pos3[0]][pos3[1]]) {
          return true;
        }
      }
    }
    return false;
  }

  private int[] getPositionOfCorner(int[] position) {
    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        if (isCornerPiece(x, y)) {
          if (tiles[x][y] == solvedTiles[position[0]][position[1]]) {
            int[] cornerPos = {x, y};
            int[] nextCorner = getNextCornerPiecePos(cornerPos);
            int[] nextSolvedCorner = getNextCornerPiecePos(position);
            
            if (tiles[nextCorner[0]][nextCorner[1]] == solvedTiles[nextSolvedCorner[0]][nextSolvedCorner[1]]) {
              return cornerPos;
            }
          }
        }
      }
    }

    int[] notFound = {-1, -1};
    return notFound;
  }

  private int[] getPositionOfEdge(int[] position) {
    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        if (isEdgePiece(x, y)) {
          if (tiles[x][y] == solvedTiles[position[0]][position[1]]) {
            int[] edgePos = {x, y};
            int[] correspondingEdge = getEdgeCorrespondingPosition(edgePos);
            int[] correspondingSearchEdge = getEdgeCorrespondingPosition(position);
            if (tiles[correspondingEdge[0]][correspondingEdge[1]] == solvedTiles[correspondingSearchEdge[0]][correspondingSearchEdge[1]]) {
              return edgePos;
            }
          }
        }
      }
    }

    int[] notFound = {-1, -1};
    return notFound;
  }

  private int[][][] getF2LPositions() {
    int[][][] positions = new int[4][2][2];
    int[] corner1 = {3, 6};
    int[] corner2 = {5, 6};
    int[] corner3 = {5, 8};
    int[] corner4 = {3, 8};
    int[] edge1 = {2, 4};
    int[] edge2 = {5, 4};
    int[] edge3 = {8, 4};
    int[] edge4 = {11, 4};

    positions[0][0] = getPositionOfCorner(corner1);
    positions[1][0] = getPositionOfCorner(corner2);
    positions[2][0] = getPositionOfCorner(corner3);
    positions[3][0] = getPositionOfCorner(corner4);
    positions[0][1] = getPositionOfEdge(edge1);
    positions[1][1] = getPositionOfEdge(edge2);
    positions[2][1] = getPositionOfEdge(edge3);
    positions[3][1] = getPositionOfEdge(edge4);

    return positions;
  }

  /*private void mark(int[] pos) {
    float tileSize = width / 12;
    ellipse(tileSize / 2 + tileSize * pos[0], tileSize / 2 + tileSize * pos[1], 5, 5);
  }*/


  //Diagram over the 2d array of the cube's tiles

  // 0 1 2  3 4 5  6 7 8  9 10 11
  // 1 0 0  0 0 0  0 0 0  0 0  0
  // 2 0 0  0 0 0  0 0 0  0 0  0

  // 3 0 0  0 0 0  0 0 0  0 0  0
  // 4 0 0  0 0 0  0 0 0  0 0  0
  // 5 0 0  0 0 0  0 0 0  0 0  0

  // 6 0 0  0 0 0  0 0 0  0 0  0
  // 7 0 0  0 0 0  0 0 0  0 0  0
  // 8 0 0  0 0 0  0 0 0  0 0  0

  private Boolean isTogetherAtTopLayer(int[][] pair) {
    int[] cornerTopPos;
    int[] corner = pair[0];
    int[] nextCorner = getNextCornerPiecePos(corner);
    int[] lastCorner = getNextCornerPiecePos(nextCorner);
    if (getFace(corner)[1] == 0) {
      cornerTopPos = corner;
    } else if (getFace(nextCorner)[1] == 0) {
      cornerTopPos = nextCorner;
    } else if (getFace(lastCorner)[1] == 0) {
      cornerTopPos = lastCorner;
    } else {
      print("ERROR, TRIED TO FIND TWO ADJACENT TOP LAYER PIECES WHEN THERE WERE NONE");
      return false;
    }

    int[] edgeTopPos;
    int[] edge = pair[1];
    int[] nextEdge = getEdgeCorrespondingPosition(edge);
    if (getFace(edge)[1] == 0) {
      edgeTopPos = edge;
    } else if (getFace(nextEdge)[1] == 0) {
      edgeTopPos = nextEdge;
    } else {
      print("ERROR, TRIED TO FIND TWO ADJACENT TOP LAYER PIECES WHEN THERE WERE NONE");
      return false;
    }

    if (edgeTopPos[0] + 1 == cornerTopPos[0] && edgeTopPos[1] == cornerTopPos[1]) {
      return true;
    } else if (cornerTopPos[0] + 1 == edgeTopPos[0] && edgeTopPos[1] == cornerTopPos[1]) {
      return true;
    } else if (edgeTopPos[1] + 1 == cornerTopPos[1] && edgeTopPos[0] == cornerTopPos[0]) {
      return true;
    } else if (cornerTopPos[1] + 1 == edgeTopPos[1] && edgeTopPos[0] == cornerTopPos[0]) {
      return true;
    }

    return false;
  }

  private int[] getCornerTopPos(int[] corner) {
    int[] cornerTopPos;
    int[] nextCorner = getNextCornerPiecePos(corner);
    int[] lastCorner = getNextCornerPiecePos(nextCorner);
    if (getFace(corner)[1] == 0) {
      cornerTopPos = corner;
    } else if (getFace(nextCorner)[1] == 0) {
      cornerTopPos = nextCorner;
    } else if (getFace(lastCorner)[1] == 0) {
      cornerTopPos = lastCorner;
    } else {
      print("ERROR, TRIED TO FIND TOP OF CORNER");
      int[] error = {-1, -1};
      return error;
    }
    return cornerTopPos;
  }

  private int[] getCornerBottomPos(int[] corner) {
    int[] cornerTopPos;
    int[] nextCorner = getNextCornerPiecePos(corner);
    int[] lastCorner = getNextCornerPiecePos(nextCorner);
    if (getFace(corner)[1] == 2) {
      cornerTopPos = corner;
    } else if (getFace(nextCorner)[1] == 2) {
      cornerTopPos = nextCorner;
    } else if (getFace(lastCorner)[1] == 2) {
      cornerTopPos = lastCorner;
    } else {
      print("ERROR, TRIED TO FIND TOP OF CORNER");
      int[] error = {-1, -1};
      return error;
    }
    return cornerTopPos;
  }

  private int[] getEdgeTopPos(int[] edge) {
    int[] edgeTopPos;
    int[] corrEdge = getEdgeCorrespondingPosition(edge);
    if (getFace(edge)[1] == 0) {
      edgeTopPos = edge;
    } else if (getFace(corrEdge)[1] == 0) {
      edgeTopPos = corrEdge;
    } else {
      print("ERROR, TRIED TO FIND TOP OF EDGE");
      int[] error = {-1, -1};
      return error;
    }
    return edgeTopPos;
  }

  private Boolean isPaired(int[][] pair) {
    int[] corner = pair[0];
    int[] cornerTopPos = getCornerTopPos(corner);

    int[] edgeTopPos;
    int[] edge = pair[1];
    int[] nextEdge = getEdgeCorrespondingPosition(edge);
    if (getFace(edge)[1] == 0) {
      edgeTopPos = edge;
    } else if (getFace(nextEdge)[1] == 0) {
      edgeTopPos = nextEdge;
    } else {
      print("ERROR, TRIED TO FIND TWO PAIRED TOP LAYER PIECES WHEN THERE WERE NONE");
      return false;
    }

    if (tiles[cornerTopPos[0]][cornerTopPos[1]] == tiles[edgeTopPos[0]][edgeTopPos[1]]) {
      return true;
    }

    return false;
  }

  private int[] getCoordsOfCorrectCornerPos(int[] pos) {
    for (int x = 0; x < tiles.length; x++) {
      for (int y = 0; y < tiles[x].length; y++) {
        if (isCornerPiece(x, y)) {
          if (solvedTiles[x][y] == tiles[pos[0]][pos[1]]) {
            int[] solvedCorner = {x, y};
            int[] nextSolvedCorner = getNextCornerPiecePos(solvedCorner);
            if (nextSolvedCorner[0] != -1 && nextSolvedCorner[1] != 1) {
              int[] corrCorner = getNextCornerPiecePos(pos);
              if (solvedTiles[nextSolvedCorner[0]][nextSolvedCorner[1]] == tiles[corrCorner[0]][corrCorner[1]]) {
                return solvedCorner;
              }
            }
          }
        }
      }
    }
    int[] defaultCoords = {-1, -1};
    return defaultCoords;
  }

  private String getPairSolution(int[][] pair) {
    int[] corner = pair[0];
    int[] cornerTopPos = getCornerTopPos(corner);
    int[] correctCornerTopPos = getCoordsOfCorrectCornerPos(cornerTopPos);
    int correctCornerTopXFace = getFace(correctCornerTopPos)[0];
    int cornerXFace = getFace(corner)[0];
    int dif = cornerXFace - correctCornerTopXFace;
    String movePiece = "";

    if (dif < 0) {
      dif += 4;
    }

    String insertPiece;
    if (getPositionOnFace(corner)[0] == 2) {
      if (dif == 1) {
        movePiece = "U2 ";
      } else if (dif == 2) {
        movePiece = "U' ";
      } else if (dif == 0) {
        movePiece = "U ";
      }

      insertPiece = "F U' F'";
    } else {
      if (dif == 0) {
        movePiece = "U' ";
      } else if (dif == 2) {
        movePiece = "U ";
      } else if (dif == 3) {
        movePiece = "U2 ";
      }

      insertPiece = "B' U B";
    }

    for (int j = 0; j < correctCornerTopXFace; j++) {
      insertPiece = convertMovesY(insertPiece);
    }

    String pairSolution = movePiece + insertPiece;
    return pairSolution;
  }

  private Boolean equalCorners(String[] c1, String[] c2) {
    int matches = 0;
    for (int i = 0; i < c1.length; i++) {
      for (int j = 0; j < c2.length; j++) {
        if (c1[i] == c2[j]) {
          matches++;
          break;
        }
      }
    }

    if (matches == 3) {
      return true;
    }
    return false;
  }

  private String getF2LSolution() {
    String solution = "";
    String solutionAdd = "";
    Boolean allDone = false;
    Boolean prioritize = false;
    String[] cornerPriority = {""};

    while (!allDone) {
      solution += solutionAdd;
      performMoves(solutionAdd);
      solutionAdd = "";
      int[][][] F2LPositions = getF2LPositions();

      for (int i = 0; i < F2LPositions.length; i++) {
        int[] corner = F2LPositions[i][0];
        int[] nextCorner = getNextCornerPiecePos(corner);
        int[] lastCorner = getNextCornerPiecePos(nextCorner);
        int[] cornerTopPos = {};
        if (getLayer(corner) == 3) {
          cornerTopPos = getCornerTopPos(corner);
        }
        int[] edge = F2LPositions[i][1];
        int[] edgeTopPos = {};
        if (getLayer(edge) == 3) {
          edgeTopPos = getEdgeTopPos(edge);
        }
        int[][] pair = F2LPositions[i];

        if (prioritize) {
          String[] comparison = {tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]};
          if (!equalCorners(cornerPriority, comparison)) {
            continue;
          }else {
            prioritize = false;
          }
        }

        if (cornerPieceIsSolved(corner) && edgePieceIsSolved(edge)) {
          if (i == F2LPositions.length - 1) {
            allDone = true;
            break;
          }
        }else if (getLayer(corner) == 3 && getLayer(edge) == 3) { //If both pieces already is on top layer
          if (isTogetherAtTopLayer(pair)) { //If they are adjacent as well
            if (isPaired(pair)) { //If they are solved relative to each other
              solutionAdd += getPairSolution(pair) + " ";
              break;
            } else { // Only next to each other
              int[] nextCornerFromTop = getNextCornerPiecePos(cornerTopPos);
              int nextCornerFromTopXFace = getFace(nextCornerFromTop)[0];

              int[] correctCorner = getCoordsOfCorrectCornerPos(corner);
              int[] correctNextCorner = getNextCornerPiecePos(correctCorner);
              int[] correctLastCorner = getNextCornerPiecePos(correctNextCorner);
              int correctLastCornerXFace = getFace(correctLastCorner)[0];

              int dif = nextCornerFromTopXFace - correctLastCornerXFace;
              String movePiece = "";

              if (dif < 0) {
                dif += 4;
              }

              if (dif == 1) {
                movePiece = "U ";
              } else if (dif == 2) {
                movePiece = "U2 ";
              } else if (dif == 3) {
                movePiece = "U' ";
              }

              String separatePair = "B' U2 B";
              for (int j = 0; j < correctLastCornerXFace; j++) { //Jag tror att mirrorSolved som nedan skulle funka här, beroende på var den gula pekar
                separatePair = convertMovesY(separatePair);
              }

              solutionAdd += movePiece + separatePair + " ";
              prioritize = true;
              String[] priority = {tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]};
              cornerPriority = priority;
              break;
            }
          } else { //They are not adjacent, pair them up
            if (getFace(corner)[1] == 0) { //Corner piece is pointing upwards
              //Position edge on correct side
              int[] sideEdgePos = getEdgeCorrespondingPosition(edgeTopPos);
              int sideEdgeXFace = getFace(sideEdgePos)[0];

              int[] solvedSideEdgePos = getCoordsOfCorrectEdgePos(sideEdgePos);
              int solvedSideEdgeXFace = getFace(solvedSideEdgePos)[0];

              int dif = sideEdgeXFace - solvedSideEdgeXFace;
              String movePiece = "";

              if (dif < 0) {
                dif += 4;
              }

              int adder = 0;

              if (dif == 1) {
                movePiece = "U ";
                adder = 1;
              } else if (dif == 2) {
                movePiece = "U2 ";
                adder = 2;
              } else if (dif == 3) {
                movePiece = "U' ";
                adder = -1;
              }

              //Hide it from slot
              int[] solvedTopEdgePos = getCoordsOfCorrectEdgePos(edgeTopPos);
              int solvedTopEdgeXFace = getFace(solvedTopEdgePos)[0];
              int rightFace = solvedSideEdgeXFace + 1;
              int leftFace = solvedSideEdgeXFace - 1;
              if (rightFace == 4) {
                rightFace = 0;
              }
              if (leftFace == -1) {
                leftFace = 3;
              }

              String hideEdge = "";
              String showEdge = "";

              if (solvedTopEdgeXFace == rightFace) {
                hideEdge = "L'";
                showEdge = "L";
              } else if (solvedTopEdgeXFace == leftFace) {
                hideEdge = "L";
                showEdge = "L'";
              }

              for (int j = 0; j < solvedSideEdgeXFace; j++) {
                hideEdge = convertMovesY(hideEdge);
                showEdge = convertMovesY(showEdge);
              }

              hideEdge += " ";

              //Position corner on top of hidden edge
              int[] nextCornerFromTop = getNextCornerPiecePos(cornerTopPos);
              int[] lastCornerFromTop = getNextCornerPiecePos(nextCornerFromTop);
              int lastCornerFromTopXFace = getFace(lastCornerFromTop)[0];

              dif = lastCornerFromTopXFace - solvedSideEdgeXFace;
              String hoverPiece = "";

              dif -= adder;

              if (dif < 0) {
                dif += 4;
              }

              if (dif == 1) {
                hoverPiece = "U ";
              } else if (dif == 2) {
                hoverPiece = "U2 ";
              } else if (dif == 3) {
                hoverPiece = "U' ";
              }

              solutionAdd += movePiece + hideEdge + hoverPiece + showEdge + " ";
              prioritize = true;
              String[] priority = {tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]};
              cornerPriority = priority;
              break;
            } else { //Corner piece is not pointing upwards
              //Prepare corner
              int[] solvedCorner = getCoordsOfCorrectCornerPos(corner);
              int[] nextSolvedCorner = getNextCornerPiecePos(solvedCorner);
              int[] lastSolvedCorner = getNextCornerPiecePos(nextSolvedCorner);
              int[] nextCornerFromTop = getNextCornerPiecePos(cornerTopPos);
              int[] lastCornerFromTop = getNextCornerPiecePos(nextCornerFromTop);
              int nextCornerFromTopXFace = getFace(nextCornerFromTop)[0];
              int nextSolvedCornerXFace = getFace(nextSolvedCorner)[0];
              int lastSolvedCornerXFace = getFace(lastSolvedCorner)[0];

              int dif = nextCornerFromTopXFace - lastSolvedCornerXFace;
              String movePiece = "";
              Boolean wasRight = false;

              if (nextCornerFromTop[0] == corner[0] && nextCornerFromTop[1] == corner[1]) {
                dif += 1;
              } else if (lastCornerFromTop[0] == corner[0] && lastCornerFromTop[1] == corner[1]) {
                dif -= 1;
                wasRight = true;
              }

              if (dif < 0) {
                dif += 4;
              }

              if (dif == 1) {
                movePiece = "U ";
              } else if (dif == 2) {
                movePiece = "U2 ";
              } else if (dif == 3) {
                movePiece = "U' ";
              }

              //Hide corner
              String hidePiece = "";
              String showPiece = "";
              if (wasRight) {
                hidePiece = "F";
                showPiece = "F'";
              } else {
                hidePiece = "L'";
                showPiece = "L";
              }

              for (int j = 0; j < nextSolvedCornerXFace; j++) {
                hidePiece = convertMovesY(hidePiece);
                showPiece = convertMovesY(showPiece);
              }

              hidePiece += " ";
              showPiece += " ";

              String pairPiece = "";
              String insertPiece = "";

              if (tiles[cornerTopPos[0]][cornerTopPos[1]] == tiles[edgeTopPos[0]][edgeTopPos[1]]) { //If same color on top
                int[] corrEdgeTopPos = getEdgeCorrespondingPosition(edgeTopPos);
                int[] mirrorCornerPos;
                if (nextCornerFromTop[0] == corner[0] && nextCornerFromTop[1] == corner[1]) {
                  mirrorCornerPos = lastCornerFromTop;
                } else {
                  mirrorCornerPos = nextCornerFromTop;
                }

                int corrEdgeTopXFace = getFace(corrEdgeTopPos)[0];
                int mirrorCornerXFace = getFace(mirrorCornerPos)[0];

                dif = mirrorCornerXFace - corrEdgeTopXFace;
                if (dif < 0) {
                  dif += 4;
                }

                if (dif == 1) {
                  pairPiece = "U' ";
                } else if (dif == 2) {
                  pairPiece = "U2 ";
                } else if (dif == 3) {
                  pairPiece = "U ";
                }

                prioritize = true;
                String[] priority = {tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]};
                cornerPriority = priority;
              }else { //If not same colors on top
                int[] corrEdgeTopPos = getEdgeCorrespondingPosition(edgeTopPos);
                int[] mirrorCornerPos;
                int[] solveMirrorCornerPos;
                String insertion = "";
                if (nextCornerFromTop[0] == corner[0] && nextCornerFromTop[1] == corner[1]) {
                  mirrorCornerPos = lastCornerFromTop;
                  solveMirrorCornerPos = nextSolvedCorner;
                  insertion = "F U F'";
                }else {
                  mirrorCornerPos = nextCornerFromTop;
                  solveMirrorCornerPos = lastSolvedCorner;
                  insertion = "B' U' B";
                }

                int corrEdgeTopXFace = getFace(corrEdgeTopPos)[0];
                int mirrorCornerXFace = getFace(mirrorCornerPos)[0];

                for (int j = 0; j < getFace(solveMirrorCornerPos)[0]; j++) {
                  insertion = convertMovesY(insertion);
                }

                dif = mirrorCornerXFace - corrEdgeTopXFace;
                if (dif < 0) {
                  dif += 4;
                }

                if (dif == 1) {
                  pairPiece = "U ";
                } else if (dif == 0) {
                  pairPiece = "U2 ";
                } else if (dif == 3) {
                  pairPiece = "U' ";
                }else {
                  hidePiece = "";
                  showPiece = "";
                }

                if (wasRight) {
                  insertPiece = "U ";
                } else {
                  insertPiece = "U' ";
                }

                insertPiece += insertion;
              }

              solutionAdd += movePiece + hidePiece + pairPiece + showPiece + insertPiece + " ";
              break;
            }
          }
        } else { // One of them is not on top layer, check which one and bring it up, then restart
          if (getLayer(corner) != 3) { //Corner is not on top layer
            int[] cornerBottomPos = getCornerBottomPos(corner);
            int[] nextCornerBottomPos = getNextCornerPiecePos(cornerBottomPos);
            int nextCornerXFace = getFace(nextCornerBottomPos)[0];
            int[] sideEdge = getEdgeCorrespondingPosition(edgeTopPos);
            int sideEdgeXFace = getFace(sideEdge)[0];

            //Extract corner from slot
            String extractCorner = "F U F'";
            if (sideEdgeXFace == nextCornerXFace || nextCornerXFace + 2 == sideEdgeXFace || sideEdgeXFace + 2 == nextCornerXFace) {
              extractCorner = "U' F U F'";
            }

            for (int j = 0; j < nextCornerXFace; j++) {
              extractCorner = convertMovesY(extractCorner);
            }

            solutionAdd += extractCorner + " ";
            prioritize = true;
            String[] priority = {tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]};
            cornerPriority = priority;
            break;
          }else if (getLayer(edge) != 3) { //Edge is not on top layer
            int[] nextCornerTopPos = getNextCornerPiecePos(cornerTopPos);
            int nextCornerXFace = getFace(nextCornerTopPos)[0];
            int edgeXFace = getFace(edge)[0];

            //Extract corner from slot
            String extractEdge = "F U F'";
            if (getPositionOnFace(edge)[0] == 0) {
              extractEdge = "B' U' B";
              if (edgeXFace == nextCornerXFace || edgeXFace + 2 == nextCornerXFace || nextCornerXFace + 2 == edgeXFace) {
                extractEdge = "U' B' U' B";
              }
            } else {
              extractEdge = "F U F'";
              if (edgeXFace + 1 == nextCornerXFace || nextCornerXFace + 3 == edgeXFace || edgeXFace + 3 == nextCornerXFace || nextCornerXFace + 1 == edgeXFace) {
                extractEdge = "U' F U F'";
              }
            }

            for (int j = 0; j < edgeXFace; j++) {
              extractEdge = convertMovesY(extractEdge);
            }

            solutionAdd += extractEdge + " ";
            break;
          }
        }
      }
    }

    return solution;
  }
  
  private int getCaseOnSticker(int x, int y) {
    if (tiles[x][y].equals("U")) {
      return 1;
    }
    return 0;
  }
  
  private int[][] rotateCase(int[][] oldCase) {
    int[][] newCase = new int[5][5];
    for (int i = 0; i < oldCase.length; i++) {
      for (int j = 0; j < oldCase[0].length; j++) {
        newCase[i][j] = oldCase[4 - j][i];
      }
    }
    return newCase;
  }
  
  private int[][] getOLLCase() {
    int[][] currentCase = new int[5][5];
    //Invalid corners
    currentCase[0][0] = 0;
    currentCase[0][4] = 0;
    currentCase[4][0] = 0;
    currentCase[4][4] = 0;
    
    //Up face + front face
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 4; j++) {
        currentCase[i + 1][j + 1] = getCaseOnSticker(i + 3, j);
      }
    }
    
    //Right, left, back face
    currentCase[0][1] = getCaseOnSticker(0, 3);
    currentCase[0][2] = getCaseOnSticker(1, 3);
    currentCase[0][3] = getCaseOnSticker(2, 3);
    
    currentCase[4][1] = getCaseOnSticker(8, 3);
    currentCase[4][2] = getCaseOnSticker(7, 3);
    currentCase[4][3] = getCaseOnSticker(6, 3);
    
    currentCase[1][0] = getCaseOnSticker(11, 3);
    currentCase[2][0] = getCaseOnSticker(10, 3);
    currentCase[3][0] = getCaseOnSticker(9, 3);
    
    return currentCase;
  }
  
  private String getOLLSolution() {
    int[][] currentCase = getOLLCase();
    Boolean foundCase = false;
    int caseNumber = 0;
    int topTurns = 0;
    
    while (foundCase == false) {      
      for (int i = 0; i < casesOLL.length; i++) {
        Boolean correctCase = true;
        for (int x = 0; x < currentCase.length; x++) {
          for (int y = 0; y < currentCase.length; y++) {
            if (currentCase[y][x] != casesOLL[i][x][y]) {
              correctCase = false;
            }
          }
        }
        if (correctCase == true) {
          foundCase = true;
          caseNumber = i;
          //print("Found OLL-case: " + String.valueOf(i) + "\n");
          break;
        }
      }
      
      if (!foundCase) {
        currentCase = rotateCase(currentCase);
        topTurns += 1;
      }
      
      if (topTurns == 4) {
        print("NEVER FOUND OLL");
        return "";
      }
    }
    
    String movesOLL = "";
    if (topTurns == 1) {
      movesOLL = "U' ";
    }else if (topTurns == 2) {
      movesOLL = "U2 ";
    }else if (topTurns == 3) {
      movesOLL = "U ";
    }
    movesOLL += solutionsOLL[caseNumber];
    
    performMoves(movesOLL);
    
    return movesOLL;
  }
  
  private String[] rotateTopLayerSides(String[] topLayerSides) {
    String[] first3sides = new String[3];
    for (int i = 0; i < topLayerSides.length; i++) {
      if (i < 3) {
        first3sides[i] = topLayerSides[i];
      }
      if (i < 9) {
        topLayerSides[i] = topLayerSides[i + 3];
      }else {
        topLayerSides[i] = first3sides[i - 9];
      }
    }
    return topLayerSides;
  }
  
  private String[][] getCasePLL(String[] sides) {
    String[][] casePLL = new String[8][];
    
    String[] cornerBL = {sides[11], sides[0]};
    casePLL[0] = cornerBL;
    String[] cornerLF = {sides[2], sides[3]};
    casePLL[2] = cornerLF;
    String[] cornerFR = {sides[5], sides[6]};
    casePLL[4] = cornerFR;
    String[] cornerRB = {sides[8], sides[9]};
    casePLL[6] = cornerRB;
    
    String[] edgeL = {sides[1]};
    casePLL[1] = edgeL;
    String[] edgeF = {sides[4]};
    casePLL[3] = edgeF;
    String[] edgeR = {sides[7]};
    casePLL[5] = edgeR;
    String[] edgeB = {sides[10]};
    casePLL[7] = edgeB;
    
    return casePLL;
  }
  
  private String[] getSidesFromCasePLL(String[][] casePLL) {
    String[] sides = new String[12];
    sides[0] = casePLL[0][1];
    sides[1] = casePLL[1][0];
    sides[2] = casePLL[2][0];
    sides[3] = casePLL[2][1];
    sides[4] = casePLL[3][0];
    sides[5] = casePLL[4][0];
    sides[6] = casePLL[4][1];
    sides[7] = casePLL[5][0];
    sides[8] = casePLL[6][0];
    sides[9] = casePLL[6][1];
    sides[10] = casePLL[7][0];
    sides[11] = casePLL[0][0];
    return sides;
  }
  
  private Boolean sidesOfTopLayerAreSolved(String[] sides) {
    String[] solvedSides = {"L", "L", "L", "F", "F", "F", "R", "R", "R", "B", "B", "B"};
    int triedRotations = 0;
    while (triedRotations < 4) {
      Boolean correct = true;
      for (int i = 0; i < sides.length; i++) {
        if (sides[i] != solvedSides[i]) {
          correct = false;
        }
      }
      if (correct) {
        return true;
      }else {
        solvedSides = rotateTopLayerSides(solvedSides);
        triedRotations++;
      }
    }
    return false;
  }
  
  private Boolean isCorrectCasePLL(String[] sides, int[] swaps) {
    String[][] casePLL = getCasePLL(sides);
    String[][] swappedCase = new String[8][];

    for (int i = 0; i < swaps.length; i++) {
      if (swaps[i] != -1) { //Perform the swaps from swaps
        swappedCase[i] = casePLL[swaps[i]];
      }else {
        swappedCase[i] = casePLL[i];
      }
    }
    String[] newSides = getSidesFromCasePLL(swappedCase);
    if (sidesOfTopLayerAreSolved(newSides)) {
      return true;
    }
    return false;
  }
  
  private String getPLLSolution() {
    String[] topLayerSides = new String[12];
    for (int i = 0; i < 12; i++) {
      topLayerSides[i] = tiles[i][3];
    }
    
    Boolean foundCase = false;
    int caseNumber = 0;
    int topTurns = 0;
    
    while (foundCase == false) {
      for (int i = 0; i < casesPLL.length; i++) {
        if (isCorrectCasePLL(topLayerSides, casesPLL[i])) {
          foundCase = true;
          caseNumber = i;
          break;
        }
      }  
      
      if (!foundCase) {
        topLayerSides = rotateTopLayerSides(topLayerSides);
        topTurns += 1;
      }
      
      if (topTurns == 4) {
        print("NEVER FOUND PLL");
        return "";
      }
    }
    
    String solutionPLL = "";
    if (topTurns == 1) {
      solutionPLL = "U ";
    }else if (topTurns == 2) {
      solutionPLL = "U2 ";
    }else if (topTurns == 3) {
      solutionPLL = "U' ";
    }
    
    solutionPLL += solutionsPLL[caseNumber];
    performMoves(solutionPLL);
    
    String auf = "";
    
    if (tiles[4][3].equals("R")) {
      auf += " U'";
    }else if (tiles[4][3].equals("L")) {
      auf += " U";
    }else if (tiles[4][3].equals("B")) {
      auf += " U2";
    }
    
    performMoves(auf);
    solutionPLL += auf;
    
    return solutionPLL;
  }

  private String removeDoubleSpaceFromString(String input) {
    String output = "";
    String lastChar = "";
    for (int i = 0; i < input.length(); i++) {
      if (!String.valueOf(input.charAt(i)).equals(" ") || !lastChar.equals(" ")) {
        output += String.valueOf(input.charAt(i));
      }
      lastChar = String.valueOf(input.charAt(i));
    }
    return output;
  }
  
  private String fixDoubleLetters(String solution) {    
    if (String.valueOf(solution.charAt(0)).equals(" ")) {
      solution = solution.substring(1);
    }
    
    String[] parts = solution.split(" ");
    if (solution.length() == 0) { 
      return solution;
    }
    String newSolution = "";
    String last = parts[0] + " ";
    String lastLetter = String.valueOf(parts[0].charAt(0));
    for (int i = 1; i < parts.length; i++) {
      String thisLetter = String.valueOf(parts[i].charAt(0));
      if (thisLetter.equals(lastLetter)) {
        
        last = "";
        
        int lastRotation = 0;
        if (parts[i - 1].length() == 1) {
          lastRotation = 1;
        }else if (String.valueOf(parts[i - 1].charAt(1)).equals("'")) {
          lastRotation = 3;
        }else if (String.valueOf(parts[i - 1].charAt(1)).equals("2")) {
          lastRotation = 2;
        }
        
        int thisRotation = 0;
        if (parts[i].length() == 1) {
          thisRotation = 1;
        }else if (String.valueOf(parts[i].charAt(1)).equals("'")) {
          thisRotation = 3;
        }else if (String.valueOf(parts[i].charAt(1)).equals("2")) {
          thisRotation = 2;
        }
        
        int sumRotation = lastRotation + thisRotation;
        
        if (sumRotation % 4 == 0) {
          last = "";
        }else if (sumRotation % 4 == 1) {
          last = lastLetter + " ";
        }else if (sumRotation % 4 == 2) {
          last = lastLetter + "2 ";
        }else if (sumRotation % 4 == 3) {
          last = lastLetter + "' ";
        }
      }else {
        newSolution += last;
        last = parts[i] + " ";
        lastLetter = String.valueOf(parts[i].charAt(0));
      }
    }
    
    newSolution += last + " ";
    
    return newSolution;
  }

  public String getSolution(boolean display) {
    String scramble = getScramble();
    if (display) print("Scramble: " + scramble + "\n");
    
    String cross = getCrossSolution();
    String f2l = getF2LSolution();
    String oll = getOLLSolution();
    String pll = getPLLSolution();
    
    String solution = cross + " " + f2l + " " + oll + " " + pll;
    
    if (display) print("Solution length: " + String.valueOf(solution.split(" ").length));
    
    solution = removeDoubleSpaceFromString(solution);
    solution = fixDoubleLetters(solution);
    if (display) print("\nSolution:\n" + solution);
    return solution;
  }
  

  //Methods to turn the layers of the cube

  //Right layer
  public void r() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[2 * cubeSize - 1][i];
      tiles[2 * cubeSize - 1][i] = tiles[2 * cubeSize - 1][cubeSize + i];
      tiles[2 * cubeSize - 1][cubeSize + i] = tiles[2 * cubeSize - 1][cubeSize * 2 + i];
      tiles[2 * cubeSize - 1][cubeSize * 2 + i] = tiles[3 * cubeSize][2 * cubeSize - 1 - i];
      tiles[3 * cubeSize][2 * cubeSize - 1 - i] = temporary;
    }
    turnFace(2, 1);
  }

  public void rPrime() {
    for (int i = 0; i < 3; i++) {
      r();
    }
  }

  public void r2() {
    for (int i = 0; i < 2; i++) {
      r();
    }
  }

  //Left layer
  public void l() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[cubeSize][cubeSize * 3 - 1 - i];
      tiles[cubeSize][cubeSize * 3 - 1 - i] = tiles[cubeSize][cubeSize * 2 - 1 - i];
      tiles[cubeSize][cubeSize * 2 - 1 - i] = tiles[cubeSize][cubeSize - 1 - i];
      tiles[cubeSize][cubeSize - 1 - i] = tiles[4 * cubeSize - 1][cubeSize + i];
      tiles[4 * cubeSize - 1][cubeSize + i] = temporary;
    }
    turnFace(0, 1);
  }

  public void lPrime() {
    for (int i = 0; i < 3; i++) {
      l();
    }
  }

  public void l2() {
    for (int i = 0; i < 2; i++) {
      l();
    }
  }

  //Upper layer
  public void u() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[i][cubeSize];
      tiles[i][cubeSize] = tiles[cubeSize + i][cubeSize];
      tiles[cubeSize + i][cubeSize] = tiles[cubeSize * 2 + i][cubeSize];
      tiles[cubeSize * 2 + i][cubeSize] = tiles[cubeSize * 3 + i][cubeSize];
      tiles[cubeSize * 3 + i][cubeSize] = temporary;
    }
    turnFace(1, 0);
  }

  public void uPrime() {
    for (int i = 0; i < 3; i++) {
      u();
    }
  }

  public void u2() {
    for (int i = 0; i < 2; i++) {
      u();
    }
  }

  //Down layer
  public void d() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[cubeSize * 4 - 1 - i][cubeSize * 2 - 1];
      tiles[cubeSize * 4 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize * 3 - 1 - i][cubeSize * 2 - 1];
      tiles[cubeSize * 3 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize * 2 - 1 - i][cubeSize * 2 - 1];
      tiles[cubeSize * 2 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize - 1 - i][cubeSize * 2 - 1];
      tiles[cubeSize - 1 - i][cubeSize * 2 - 1] = temporary;
    }
    turnFace(1, 2);
  }

  public void dPrime() {
    for (int i = 0; i < 3; i++) {
      d();
    }
  }

  public void d2() {
    for (int i = 0; i < 2; i++) {
      d();
    }
  }

  //Front layer
  public void f() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[cubeSize + i][cubeSize - 1];
      tiles[cubeSize + i][cubeSize - 1] = tiles[cubeSize - 1][cubeSize * 2 - 1 - i];
      tiles[cubeSize - 1][cubeSize * 2 - 1 - i] = tiles[cubeSize * 2 - 1 - i][cubeSize * 2];
      tiles[cubeSize * 2 - 1 - i][cubeSize * 2] = tiles[cubeSize * 2][cubeSize + i];
      tiles[cubeSize * 2][cubeSize + i] = temporary;
    }
    turnFace(1, 1);
  }

  public void fPrime() {
    for (int i = 0; i < 3; i++) {
      f();
    }
  }

  public void f2() {
    for (int i = 0; i < 2; i++) {
      f();
    }
  }

  //Back layer
  public void b() {
    for (int i = 0; i < cubeSize; i++) {
      String temporary = tiles[cubeSize + i][0];
      tiles[cubeSize + i][0] = tiles[cubeSize * 3 - 1][cubeSize + i];
      tiles[cubeSize * 3 - 1][cubeSize + i] = tiles[cubeSize * 2 - 1 - i][cubeSize * 3 - 1];
      tiles[cubeSize * 2 - 1 - i][cubeSize * 3 - 1] = tiles[0][cubeSize * 2 - 1 - i];
      tiles[0][cubeSize * 2 - 1 - i] = temporary;
    }
    turnFace(3, 1);
  }

  public void bPrime() {
    for (int i = 0; i < 3; i++) {
      b();
    }
  }

  public void b2() {
    for (int i = 0; i < 2; i++) {
      b();
    }
  }

  //Turns a face at x, y
  private void turnFace(int x, int y) {
    String temporaryCorner = tiles[cubeSize * x][cubeSize * y];
    tiles[cubeSize * x][cubeSize * y] = tiles[cubeSize * x][cubeSize * y + cubeSize - 1];
    tiles[cubeSize * x][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y + cubeSize - 1];
    tiles[cubeSize * x + cubeSize - 1][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y];
    tiles[cubeSize * x + cubeSize - 1][cubeSize * y] = temporaryCorner;

    String temporaryEdge = tiles[cubeSize * x + 1][cubeSize * y];
    tiles[cubeSize * x + 1][cubeSize * y] = tiles[cubeSize * x][cubeSize * y + 1];
    tiles[cubeSize * x][cubeSize * y + 1] = tiles[cubeSize * x + 1][cubeSize * y + cubeSize - 1];
    tiles[cubeSize * x + 1][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y + 1];
    tiles[cubeSize * x + cubeSize - 1][cubeSize * y + 1] = temporaryEdge;
  }

  //Returns a string of all tiles on a face
  private String faceScramble(int x, int y) {
    int a = cubeSize * x;
    int b = cubeSize * y;
    String output = "";
    output += String.valueOf(tiles[a][b]);
    output += String.valueOf(tiles[a + 1][b]);
    output += String.valueOf(tiles[a + 2][b]);
    output += String.valueOf(tiles[a][b + 1]);
    output += String.valueOf(tiles[a + 1][b + 1]);
    output += String.valueOf(tiles[a + 2][b + 1]);
    output += String.valueOf(tiles[a][b + 2]);
    output += String.valueOf(tiles[a + 1][b + 2]);
    output += String.valueOf(tiles[a + 2][b + 2]);
    return output;
  }

  //Returns a string of all tiles from the faces in following order: U R F D L B
  public String getScramble() {
    String output = "";
    output += faceScramble(1, 0);
    output += faceScramble(2, 1);
    output += faceScramble(1, 1);
    output += faceScramble(1, 2);
    output += faceScramble(0, 1);
    output += faceScramble(3, 1);
    return output;
  }
  
  private void setFace(int x, int y, String face) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        String character = String.valueOf(face.charAt(j * 3 + i));
        if (character.equals("U")) {
          tiles[x * 3 + i][y * 3 + j] = "U";
        }else if (character.equals("R")) {
          tiles[x * 3 + i][y * 3 + j] = "R";
        }else if (character.equals("F")) {
          tiles[x * 3 + i][y * 3 + j] = "F";
        }else if (character.equals("D")) {
          tiles[x * 3 + i][y * 3 + j] = "D";
        }else if (character.equals("L")) {
          tiles[x * 3 + i][y * 3 + j] = "L";
        }else if (character.equals("B")) {
          tiles[x * 3 + i][y * 3 + j] = "B";
        }
      }
    } 
  }
  
  public void insertScramble(String scramble) {
    String u = scramble.substring(0, 9);
    String r = scramble.substring(9, 18);
    String f = scramble.substring(18, 27);
    String d = scramble.substring(27, 36);
    String l = scramble.substring(36, 45);
    String b = scramble.substring(45, 54);
    setFace(1, 0, u);
    setFace(2, 1, r);
    setFace(1, 1, f);
    setFace(1, 2, d);
    setFace(0, 1, l);
    setFace(3, 1, b);
  }
}
