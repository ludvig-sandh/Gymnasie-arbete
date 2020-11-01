from PIL import Image, ImageOps
import motors
import picture

def generateTileGrid():
    # E  E  E  U  U  U  E  E  E  E  E  E
    # E  E  E  U  U  U  E  E  E  E  E  E
    # E  E  E  U  U  U  E  E  E  E  E  E
    # L  L  L  F  F  F  R  R  R  B  B  B
    # L  L  L  F  F  F  R  R  R  B  B  B
    # L  L  L  F  F  F  R  R  R  B  B  B
    # E  E  E  D  D  D  E  E  E  E  E  E
    # E  E  E  D  D  D  E  E  E  E  E  E
    # E  E  E  D  D  D  E  E  E  E  E  E

    tiles = []
    for i in range(12):
        row = []
        for j in range(9):
            row.append("E")
        tiles.append(row)
    return tiles

def getScramble():

    imageName = "cubepic"
    extension = "png"

    #Pixel coordinates of u, f, r faces in "reading" order but skipped middle
    '''u = [[125, 40], [158, 53], [204, 70], [92, 55], [169, 94], [55, 75], [86, 92], [132, 119]]
    f = [[36, 110], [68, 129], [104, 153], [47, 148], [109, 197], [53, 175], [81, 198], [108, 225]]
    r = [[154, 157], [193, 126], [217, 103], [148, 198], [208, 143], [149, 224], [175, 198], [200, 174]]'''

    u = [[1263, 1763], [1503, 1867], [1789, 1967], [1041, 1909], [1585, 2131], [787, 2053], [1055, 2189], [1379, 2317]]
    f = [[673, 2275], [929, 2429], [1242, 2583], [703, 2549], [1211, 2861], [767, 2789], [991, 2961], [1253, 3129]]
    r = [[1545, 2561], [1773, 2337], [1957, 2163], [1501, 2857], [1925, 2459], [1531, 3109], [1729, 2915], [1935, 2719]]

    tiles = generateTileGrid()

    picture.capture(imageName)

    #middle colors
    tiles[4][1] = "U"
    tiles[4][4] = "F"
    tiles[1][4] = "L"
    tiles[7][4] = "R"
    tiles[10][4] = "B"
    tiles[4][7] = "D"

    #up face colors
    tiles[3][0] = color(u[0])
    tiles[4][0] = color(u[1])
    tiles[5][0] = color(u[2])
    tiles[3][1] = color(u[3])
    tiles[5][1] = color(u[4])
    tiles[3][2] = color(u[5])
    tiles[4][2] = color(u[6])
    tiles[5][2] = color(u[7])

    #front face colors
    tiles[3][3] = color(f[0])
    tiles[4][3] = color(f[1])
    tiles[5][3] = color(f[2])
    tiles[3][4] = color(f[3])
    tiles[5][4] = color(f[4])
    tiles[3][5] = color(f[5])
    tiles[4][5] = color(f[6])
    tiles[5][5] = color(f[7])

    #right face colors
    tiles[6][3] = color(r[0])
    tiles[7][3] = color(r[1])
    tiles[8][3] = color(r[2])
    tiles[6][4] = color(r[3])
    tiles[8][4] = color(r[4])
    tiles[6][5] = color(r[5])
    tiles[7][5] = color(r[6])
    tiles[8][5] = color(r[7]) #30st


    setupMoves = "F2 B2"
    motors.execute(setupMoves)
    picture.capture(imageName)

    tiles[5][6] = color(u[5])
    tiles[4][6] = color(u[6])
    tiles[3][6] = color(u[7])

    tiles[2][5] = color(r[0])
    tiles[2][4] = color(r[3])
    tiles[2][3] = color(r[5])

    tiles[5][8] = color(u[0])
    tiles[4][8] = color(u[1])
    tiles[3][8] = color(u[2])

    tiles[0][5] = color(r[2])
    tiles[0][4] = color(r[4])
    tiles[0][3] = color(r[7]) #42


    setupMoves = "B2 F2 U2 D2"
    motors.execute(setupMoves)
    picture.capture(imageName)

    tiles[9][3] = color(f[0])
    tiles[10][3] = color(f[1])
    tiles[11][3] = color(f[2])

    tiles[1][3] = color(r[1])

    tiles[9][5] = color(f[5])
    tiles[10][5] = color(f[6])
    tiles[11][5] = color(f[7])

    tiles[1][5] = color(r[6]) #50


    setupMoves = "D2 U2 R2 L2"
    motors.execute(setupMoves)
    picture.capture(imageName)

    tiles[3][7] = color(u[3])
    tiles[5][7] = color(u[4])
    tiles[9][4] = color(f[3])
    tiles[11][4] = color(f[4]) #54


    setupMoves = "L2 R2"
    motors.execute(setupMoves)

    display(tiles)

    return cubeScramble(tiles)


#Returns a string of all tiles on a face
def faceScramble(tiles, x, y):
    a = cubeSize * x
    b = cubeSize * y
    output = ""
    output += tiles[a][b]
    output += tiles[a + 1][b]
    output += tiles[a + 2][b]
    output += tiles[a][b + 1]
    output += tiles[a + 1][b + 1]
    output += tiles[a + 2][b + 1]
    output += tiles[a][b + 2]
    output += tiles[a + 1][b + 2]
    output += tiles[a + 2][b + 2]
    return output

#Returns a string of all tiles from the faces in following order: U R F D L B
def cubeScramble(tiles):
    output = ""
    output += faceScramble(1, 0)
    output += faceScramble(2, 1)
    output += faceScramble(1, 1)
    output += faceScramble(1, 2)
    output += faceScramble(0, 1)
    output += faceScramble(3, 1)
    return output

#Prints out the cube state 
def display(tiles):
    print()
    for y in range(len(tiles[0])):
        line = ""
        for x in range(len(tiles)):
            line += tiles[x][y] + " "
        print(line)

#Detects and returns a color at a coordinate in the captured picture
def color(xy):
    image = Image.open(imageName + "." + extension)
    image = ImageOps.exif_transpose(image) #Applies a rotation transformation in case it's necessary
    
    image = image.convert('RGB')
    pxs = image.load() #Generating a grid of retrievable pixel values

    px = pxs[xy[0], xy[1]]
    
    red = (210, 103, 69)
    red2 = (155, 64, 37)
    blue = (63, 65, 112)
    green = (16, 201, 37)
    green2 = (79, 120, 28)
    yellow = (190, 171, 6)
    orange = (255, 146, 17)
    orange2 = (208, 100, 36)
    white = (243, 245, 244)
    white2 = (177, 138, 95)


    colors = [red, red2, blue, green, green2, yellow, orange, orange2, white, white2]
    colorNames = ["R", "R", "B", "F", "F", "D", "L", "L", "U", "U"]

    lowestSum = -1
    lowestColor = 0

    for i in range(len(colors)):
        currentSum = 0
        for j in range(3):
            currentSum += abs(px[j] - colors[i][j])
        if currentSum < lowestSum or lowestSum == -1:
            lowestSum = currentSum
            lowestColor = i
        
    return colorNames[lowestColor]