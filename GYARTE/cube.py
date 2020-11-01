class Cube:
    cubeSize = 3
    tiles = []
    solvedTiles = []

    #Data:
    casesOLL = [
        [[0, 0, 1, 0, 0], [1, 0, 0, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 1, 1, 1, 0], [0, 0, 0, 0, 0], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 0], [0, 0, 1, 1, 0]], 
        [[0, 0, 1, 0, 0], [1, 0, 0, 1, 0], [1, 0, 1, 0, 1], [0, 0, 0, 0, 1], [0, 1, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [1, 0, 1, 0, 1], [0, 0, 0, 0, 0], [0, 1, 1, 1, 0]], 
    
        [[0, 0, 1, 0, 0], [1, 0, 0, 0, 1], [1, 0, 1, 0, 1], [0, 1, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 0, 1, 1, 0], [0, 1, 0, 0, 0], [1, 0, 1, 0, 1], [1, 0, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [1, 0, 1, 0, 1], [0, 1, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 0, 0, 1, 0], [1, 0, 1, 0, 0], [0, 1, 1, 0, 1], [1, 0, 0, 0, 0], [0, 0, 1, 1, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 0, 1], [1, 0, 1, 1, 0], [0, 0, 0, 0, 1], [0, 1, 1, 0, 0]], 
        
        [[0, 1, 1, 1, 0], [0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 1, 1, 1, 0], [0, 0, 0, 0, 0], [1, 0, 1, 1, 0], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 0, 1], [0, 1, 1, 0, 1], [0, 0, 1, 0, 1], [0, 1, 0, 0, 0]], 
        [[0, 0, 1, 1, 0], [1, 0, 0, 0, 0], [1, 0, 1, 1, 0], [1, 0, 1, 0, 0], [0, 0, 0, 1, 0]], 
        [[0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 1, 1, 0, 1], [1, 0, 0, 0, 0], [0, 0, 1, 1, 0]], 
        
        [[0, 0, 0, 0, 0], [1, 0, 1, 1, 0], [1, 0, 1, 1, 0], [0, 0, 0, 0, 1], [0, 1, 1, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 1, 0], [1, 0, 1, 1, 0], [1, 0, 1, 0, 0], [0, 0, 0, 1, 0]], 
        [[0, 0, 1, 1, 0], [0, 1, 0, 0, 0], [0, 1, 1, 0, 1], [0, 0, 1, 0, 1], [0, 1, 0, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 0, 1], [1, 0, 1, 1, 0], [0, 1, 1, 0, 0], [0, 0, 0, 1, 0]], 
        [[0, 0, 1, 1, 0], [1, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]], 
        
        [[0, 0, 0, 1, 0], [1, 0, 1, 0, 0], [0, 1, 1, 0, 1], [0, 0, 0, 1, 0], [0, 1, 1, 0, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 0, 1], [1, 0, 1, 1, 0], [0, 1, 0, 0, 0], [0, 0, 1, 1, 0]], 
        [[0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 1, 1, 0, 1], [0, 1, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 0, 0, 0, 0], [1, 0, 1, 1, 0], [1, 0, 1, 1, 0], [1, 0, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 1, 0], [1, 0, 1, 1, 0], [0, 0, 0, 1, 0], [0, 1, 1, 0, 0]], 
        
        [[0, 0, 0, 1, 0], [0, 1, 1, 0, 0], [0, 1, 1, 0, 1], [0, 1, 0, 0, 0], [0, 0, 1, 1, 0]],
        [[0, 0, 1, 0, 0], [0, 1, 0, 0, 1], [1, 0, 1, 1, 0], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]],
        [[0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 1, 1, 0, 1], [0, 0, 0, 1, 0], [0, 1, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 0, 1], [0, 1, 1, 0, 1], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]], 
        [[0, 0, 1, 0, 0], [1, 0, 0, 1, 0], [1, 0, 1, 1, 0], [0, 1, 1, 0, 0], [0, 0, 0, 1, 0]], 
        
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [0, 1, 1, 0, 1], [1, 0, 1, 0, 1], [0, 0, 0, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [1, 0, 1, 1, 0], [1, 0, 1, 0, 1], [0, 0, 0, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [0, 1, 1, 0, 1], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [1, 0, 1, 1, 0], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [1, 0, 1, 1, 0], [0, 1, 1, 1, 0], [0, 0, 0, 0, 0]], 
        
        [[0, 1, 1, 0, 0], [0, 0, 0, 0, 1], [0, 1, 1, 1, 0], [0, 0, 0, 0, 1], [0, 1, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [1, 0, 0, 0, 1], [0, 1, 1, 1, 0], [1, 0, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 0, 1], [1, 0, 1, 0, 1], [0, 0, 1, 0, 1], [0, 1, 0, 0, 0]], 
        [[0, 0, 0, 0, 0], [1, 0, 1, 0, 1], [1, 0, 1, 0, 1], [1, 0, 1, 0, 1], [0, 0, 0, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 0, 1], [0, 1, 1, 1, 0], [1, 0, 0, 1, 0], [0, 0, 1, 0, 0]], 
        
        [[0, 0, 1, 1, 0], [1, 0, 0, 0, 0], [0, 1, 1, 1, 0], [0, 1, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 0, 1], [0, 1, 1, 1, 0], [0, 1, 0, 0, 0], [0, 0, 1, 1, 0]], 
        [[0, 0, 1, 1, 0], [1, 0, 0, 0, 0], [0, 1, 1, 1, 0], [0, 0, 0, 1, 0], [0, 1, 1, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 1, 0], [0, 1, 1, 1, 0], [0, 0, 0, 1, 0], [0, 1, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [1, 0, 0, 1, 0], [0, 1, 1, 1, 0], [1, 0, 0, 1, 0], [0, 0, 1, 0, 0]], 
        
        [[0, 0, 1, 0, 0], [1, 0, 0, 0, 1], [0, 1, 1, 1, 0], [0, 1, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [1, 0, 1, 0, 1], [0, 1, 1, 0, 1], [0, 0, 0, 0, 0]], 
        [[0, 0, 1, 1, 0], [0, 1, 0, 0, 0], [0, 1, 1, 1, 0], [1, 0, 0, 1, 0], [0, 0, 1, 0, 0]], 
        [[0, 1, 1, 0, 0], [0, 0, 0, 1, 0], [0, 1, 1, 1, 0], [0, 1, 0, 0, 1], [0, 0, 1, 0, 0]], 
        [[0, 0, 1, 0, 0], [0, 1, 0, 1, 0], [0, 1, 1, 1, 0], [0, 1, 0, 1, 0], [0, 0, 1, 0, 0]], 
        
        [[0, 1, 0, 1, 0], [0, 0, 1, 0, 0], [0, 1, 1, 1, 0], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 0, 0, 1, 0], [1, 0, 1, 0, 0], [0, 1, 1, 1, 0], [1, 0, 1, 0, 0], [0, 0, 0, 1, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 0, 1], [0, 1, 1, 1, 0], [0, 1, 1, 0, 0], [0, 0, 0, 1, 0]], 
        [[0, 0, 0, 1, 0], [1, 0, 1, 0, 0], [0, 1, 1, 1, 0], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]], 
        [[0, 0, 0, 0, 0], [0, 1, 1, 0, 1], [0, 1, 1, 1, 0], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]], 
        
        [[0, 0, 0, 0, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0]], 
        [[0, 1, 0, 0, 0], [0, 0, 1, 1, 0], [0, 1, 1, 1, 0], [0, 0, 1, 1, 0], [0, 1, 0, 0, 0]],
        [[0, 0, 0, 0, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 0, 0, 0, 0]]
    ]
  
    solutionsOLL = [
        "R U2 R2 F R F' U2 R' F R F'",
        "R' F' R U2 L' U2 L U2 R' F R",
        "F U R U' R' F' U F R U R' U' F'",
        "F' U' L' U L F U F R U R' U' F'",
        "F R' F' R U R U' R' U F R U R' U' F'",
        "F R' F' R U R U' R' U' F R U R' U' F'",
        "R U R' U R' F R F' U2 R' F R F'",
        "L' R B R B R' B' L2 R2 F R F' L'",
        "F R U R' U' R U R' U' F'",
        "F' L' U' L U L' U' L U F", #10
        "L' B' L R' U' R U R' U' R U L' B L",
        "R B R' L U L' U' L U L' U' R B' R'",
        "R B' R2 F R2 B R2 F' R",
        "L' B L2 F' L2 B' L2 F L'",
        "R' F2 L F L' F R",
        "L F2 R' F' R F' L'",
        "R B L' B L B2 R'",
        "L' B' R B' R' B2 L",
        "L' R2 B R' B R B2 R' B L R'",
        "L2 R B' L B' L' B2 L B' L R'", #20
        "R U R' U' R' F R R U R' U' F'",
        "L' U' L U L F' L' L' U' L U F",
        "F U R U' R' F'",
        "F' U' L' U L F",
        "R' U' F U R U' R' F' R",
        "L U F' U' L' U L F L'",
        "R U2 R2 F R F' R U2 R'",
        "F R U' R' U' R U R' F'",
        "R' U' R U' R' U R U R B' R' B",
        "L U L' U L U' L' U' L' B L B'", #30
        "L' R B R B R' B' R' U R U' L R'",
        "L' R B' L' B' L B L U' L' U L R'",
        "L' U L U2 L' U' B' U B U L",
        "R U' R' U2 R U B U' B' U' R'",
        "L R' F L' R U2 L R' F L' R",
        "F U R U' R' U R U' R' F'",
        "L' B' L U' R' U R U' R' U R L' B L",
        "R U R' U R U' B U' B' R'",
        "R U2 R2 U' R U' R' U2 F R F'",
        "L' B' L R' U' R U L' B L", #40
        "R B R' L U L' U' R B' R'",
        "L F' L' U' L F L' F' U F",
        "R' F R U R' F' R F U' F'",
        "R U R' U' R' F R F'",
        "F R U R' U' F'",
        "R U R' U' B' R' F R F' B",
        "R' U' R' F R F' U R",
        "R' F R U R' U' F' U R",
        "L F' L' U' L U F U' L'",
        "R U R' U' L R' F R F' L'", #50
        "F R U R' U' R U R' U' R U R' U' F'",
        "R U2 R2 U' R2 U' R2 U2 R",
        "R U R' U R U2 R'",
        "L' U' L U' L' U2 L",
        "R' F R B' R' F' R B",
        "R2 D R' U2 R D' R' U2 R'",
        "L F R' F' L' F R F'",
        ""
    ]

    casesPLL = [
        [-1, 5, -1, 1, -1, 3, -1, -1],
        [-1, 3, -1, 5, -1, 1, -1, -1],
        [-1, 3, -1, 1, -1, 7, -1, 5],
        [-1, 5, -1, 7, -1, 1, -1, 3],
        [4, -1, -1, -1, 6, -1, 0, -1],
        [-1, -1, 6, -1, 2, -1, 4, -1],
        [2, -1, 0, -1, 6, -1, 4, -1],
        [-1, 5, -1, -1, 6, 1, 4, -1],
        [-1, -1, -1, 7, 6, -1, 4, 3],
        [6, 7, -1, -1, -1, -1, 0, 1],
        [-1, -1, -1, 5, 6, 3, 4, -1],
        [6, 3, -1, 1, -1, -1, 0, -1],
        [6, -1, -1, 5, -1, 3, 0, -1],
        [4, -1, -1, -1, 0, 7, -1, 5],
        [4, 7, -1, -1, 0, -1, -1, 1],
        [4, -1, -1, 7, 0, -1, -1, 3],
        [-1, -1, 6, 7, -1, -1, 2, 3],
        [2, 7, 6, -1, -1, 1, 0, 5],
        [6, -1, -1, 5, 0, 7, 4, 3],
        [4, 3, 0, 5, 2, 1, -1, -1],
        [2, 7, 6, 1, -1, -1, 0, 3],
        [-1, -1, -1, -1, -1, -1, -1, -1]
    ]
  
    solutionsPLL = [
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
    ]
    #

    #Initialize new cube and fill its tiles with solved tiles
    def __init__(self):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        for x in range(12):
            tiles.append([])
            solvedTiles.append([])
            for y in range(9):
                sideX = x // 3
                sideY = y // 3
                if sideX == 0:
                    if sideY == 1:
                        tiles[x].append("L")
                        solvedTiles[x].append("L")
                    else:
                        tiles[x].append("E")
                        solvedTiles[x].append("E")
                elif sideX == 1:
                    if sideY == 0:
                        tiles[x].append("U")
                        solvedTiles[x].append("U")
                    elif sideY == 1:
                        tiles[x].append("F")
                        solvedTiles[x].append("F")
                    elif sideY == 2:
                        tiles[x].append("D")
                        solvedTiles[x].append("D")
                elif sideX == 2:
                    if sideY == 1:
                        tiles[x].append("R")
                        solvedTiles[x].append("R")
                    else:
                        tiles[x].append("E")
                        solvedTiles[x].append("E")
                elif sideX == 3:
                    if sideY == 1:
                        tiles[x].append("B")
                        solvedTiles[x].append("B")
                    else:
                        tiles[x].append("E")
                        solvedTiles[x].append("E")

    #Method to print the cube state in the command line    
    def display(self):
        tiles = self.tiles
        print()
        for y in range(len(tiles[0])):
            line = ""
            for x in range(len(tiles)):
                line += tiles[x][y] + " "
            print(line)

    def performMoves(self, movesString):
        moves = movesString.split()
        for i in range(len(moves)):
            if moves[i] == "R":
                self.r()
            elif moves[i] == "R'":
                self.rPrime()
            elif moves[i] == "R2":
                self.r2()
            elif moves[i] == "L":
                self.l()
            elif moves[i] == "L'":
                self.lPrime()
            elif moves[i] == "L2":
                self.l2()
            elif moves[i] == "F":
                self.f()
            elif moves[i] == "F'":
                self.fPrime()
            elif moves[i] == "F2":
                self.f2()
            elif moves[i] == "U":
                self.u()
            elif moves[i] == "U'":
                self.uPrime()
            elif moves[i] == "U2":
                self.u2()
            elif moves[i] == "D":
                self.d()
            elif moves[i] == "D'":
                self.dPrime()
            elif moves[i] == "D2":
                self.d2()
            elif moves[i] == "B":
                self.b()
            elif moves[i] == "B'":
                self.bPrime()
            elif moves[i] == "B2":
                self.b2()
    
    def isEdgePiece(self, x, y):
        if x % 3 == 0 and y % 3 == 1:
            return True
        elif x % 3 == 1 and y % 3 == 0:
            return True
        elif x % 3 == 1 and y % 3 == 2:
            return True
        elif x % 3 == 2 and y % 3 == 1:
            return True
        return False

    def isCornerPiece(self, x, y):
        if x % 3 != 1 and y % 3 != 1:
            return True
        return False

    def getEdgeCorrespondingPosition(self, pos):
        edges = [
            [[1, 3], [3, 1]], 
            [[4, 3], [4, 2]], 
            [[7, 3], [5, 1]], 
            [[10, 3], [4, 0]], 
            [[3, 4], [2, 4]], 
            [[0, 4], [11, 4]], 
            [[9, 4], [8, 4]], 
            [[6, 4], [5, 4]], 
            [[1, 5], [3, 7]], 
            [[4, 5], [4, 6]], 
            [[7, 5], [5, 7]], 
            [[10, 5], [4, 8]]
        ]

        notFound = [-1, -1]
        if len(pos) == 0:
            return notFound

        edge = [pos[0], pos[1]]
        for i in range(len(edges)):
            if edges[i][0][0] == edge[0] and edges[i][0][1] == edge[1]:
                return edges[i][1]
            elif edges[i][1][0] == edge[0] and edges[i][1][1] == edge[1]:
                return edges[i][0]
        return notFound

    def getPositionOnFace(self, pos):
        facePosition = [pos[0] % 3, pos[1] % 3]
        return facePosition
    
    def getFace(self, pos):
        face = [pos[0] // 3, pos[1] // 3]
        return face
    
    def getCrossEdgePositions(self):
        tiles = self.tiles
        crossEdgePositions = []
        for i in range(4):
            crossEdgePositions.append([])
        foundPosition = 0

        for x in range(len(tiles)):
            for y in range(len(tiles[x])):
                if tiles[x][y] == "D" and self.isEdgePiece(x, y):
                    tilePosition = [x, y]
                    crossEdgePositions[foundPosition] = tilePosition
                    foundPosition += 1
        return crossEdgePositions

    def getLayer(self, pos):
        if pos[1] == 4:
            return 2
        elif pos[1] < 4:
            return 3
        return 1
    
    def edgePieceIsSolved(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        if tiles[pos[0]][pos[1]] == solvedTiles[pos[0]][pos[1]]:
            pos2 = self.getEdgeCorrespondingPosition(pos)
            if tiles[pos2[0]][pos2[1]] == solvedTiles[pos2[0]][pos2[1]]:
                return True
        return False

    def edgePieceIsFlipped(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        pos2 = self.getEdgeCorrespondingPosition(pos)
        if tiles[pos[0]][pos[1]] == solvedTiles[pos2[0]][pos2[1]]:
            if tiles[pos2[0]][pos2[1]] == solvedTiles[pos[0]][pos[1]]:
                return True
        return False

    def convertMoveY(self, move):
        if move == "R":
            return "B"
        elif move == "L":
            return "F"
        elif move == "F":
            return "R"
        elif move == "B":
            return "L"
        elif move == "U":
            return "U"
        elif move == "D":
            return "D"
        return ""

    def convertMovesY(self, stringMoves):
        moves = stringMoves.split()
        convertedMoves = []
        for i in range(len(moves)):
            adder = ""
            if len(moves[i]) > 1:
                adder = str(moves[i][1])
            convertedMoves.append(self.convertMoveY(str(moves[i][0])) + adder)
            
        blank = " "
        return blank.join(convertedMoves)

    def getCoordsOfCorrectEdgePos(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        for x in range(len(tiles)):
            for y in range(len(tiles[x])):
                if solvedTiles[x][y] == tiles[pos[0]][pos[1]]:
                    solvedEdge = [x, y]
                    corrSolvedEdge = self.getEdgeCorrespondingPosition(solvedEdge)
                    if corrSolvedEdge[0] != -1 and corrSolvedEdge[1] != 1:
                        corrEdge = self.getEdgeCorrespondingPosition(pos)
                        if solvedTiles[corrSolvedEdge[0]][corrSolvedEdge[1]] == tiles[corrEdge[0]][corrEdge[1]]:
                            return solvedEdge
                        
        defaultCoords = [-1, -1]
        return defaultCoords

    def getCrossSolution(self):
        tiles = self.tiles
        solvedTiles = self.solvedTiles

        solution = ""
        solutionAdd = ""
        allDone = False

        while allDone == False:
            solution += solutionAdd
            self.performMoves(solutionAdd)
            solutionAdd = ""
            crossEdgePositions = self.getCrossEdgePositions()

            for i in range(len(crossEdgePositions)):
                edge = crossEdgePositions[i]
                layer = self.getLayer(edge)
                if layer == 1:
                    dFace = [1, 2]
                    if self.edgePieceIsSolved(edge) == True:
                        if i == len(crossEdgePositions) - 1:
                            allDone = True
                            break
                    elif self.getFace(edge)[0] == dFace[0] and self.getFace(edge)[1] == dFace[1]: #If an edge is oriented at bottom but not permuted
                        correspondingEdge = self.getEdgeCorrespondingPosition(edge)
                        correspondingFace = self.getFace(correspondingEdge)
                        correctEdgePos = self.getCoordsOfCorrectEdgePos(edge)
                        correctCorrespondingEdgePos = self.getEdgeCorrespondingPosition(correctEdgePos)
                        correctFace = self.getFace(correctCorrespondingEdgePos)
                        dif = correctFace[0] - correspondingFace[0]
                        moveUpPiece = "L2"
                        for j in range(correspondingFace[0]):
                            moveUpPiece = self.convertMovesY(moveUpPiece)
                        if dif < 0:
                            dif += 4
                        if dif == 1:
                            moveUpPiece += " U'"
                        elif dif == 2:
                            moveUpPiece += " U2"
                        elif dif == 3:
                            moveUpPiece += " U"
                        moveDownPiece = "L2"
                        for j in range(correctFace[0]):
                            moveDownPiece = self.convertMovesY(moveDownPiece)
                        edgePieceSolution = moveUpPiece + " " + moveDownPiece
                        solutionAdd += edgePieceSolution + " "
                        break
                    elif self.edgePieceIsFlipped(edge): #If an edge is permuted on the bottom but not oriented
                        edgePieceSolution = "F' D R' D'"
                        correspondingEdge = self.getEdgeCorrespondingPosition(edge)
                        tile = tiles[correspondingEdge[0]][correspondingEdge[1]]
                        if tile == "R":
                            edgePieceSolution = self.convertMovesY(edgePieceSolution)
                        elif tile == "B":
                            dgePieceSolution = self.convertMovesY(edgePieceSolution)
                            dgePieceSolution = self.convertMovesY(edgePieceSolution)
                        elif tile == "L":
                            dgePieceSolution = self.convertMovesY(edgePieceSolution)
                            dgePieceSolution = self.convertMovesY(edgePieceSolution)
                            dgePieceSolution = self.convertMovesY(edgePieceSolution)
                        solutionAdd += edgePieceSolution + " "
                        break
                    elif self.getFace(edge)[1] == 1: #If an edge neither is permuted or oriented
                        moveUpPiece = "L2"
                        correspondingEdge = self.getEdgeCorrespondingPosition(edge)
                        correctEdgePos = self.getCoordsOfCorrectEdgePos(correspondingEdge)
                        correctFace = self.getFace(correctEdgePos)
                        for j in range(self.getFace(edge)[0]):
                            moveUpPiece = self.convertMovesY(moveUpPiece)
                        
                        dif = correctFace[0] - self.getFace(edge)[0]
                        if dif < 0:
                            dif += 4
                        if dif == 1:
                            moveUpPiece += " U2"
                        elif dif == 2:
                            moveUpPiece += " U"
                        elif dif == 0:
                            moveUpPiece += " U'"
                        
                        moveDownPiece = "F' L F"
                        for j in range(correctFace[0]):
                            moveDownPiece = self.convertMovesY(moveDownPiece)
                    
                        solutionAdd += moveUpPiece + " " + moveDownPiece + " "
                        break
                elif layer == 2:
                    correspondingEdge = self.getEdgeCorrespondingPosition(edge)
                    if tiles[correspondingEdge[0]][correspondingEdge[1]] == solvedTiles[correspondingEdge[0]][correspondingEdge[1]]: #If the edge just needs to go down
                        edgePieceSolution = ""
                        if self.getPositionOnFace(edge)[0] == 0:
                            edgePieceSolution = "B"
                        elif self.getPositionOnFace(edge)[0] == 2:
                            edgePieceSolution = "F'"

                        for j in range(self.getFace(edge)[0]):
                            edgePieceSolution = self.convertMovesY(edgePieceSolution)
                        
                        solutionAdd += edgePieceSolution + " "
                        break
                    else: #If the edge would go down incorrectly
                        moveUpPiece = ""
                        if self.getPositionOnFace(edge)[0] == 0:
                            moveUpPiece = "B' U' B"
                        elif self.getPositionOnFace(edge)[0] == 2:
                            moveUpPiece = "F U F'"
                        for j in range(self.getFace(edge)[0]):
                            moveUpPiece = self.convertMovesY(moveUpPiece)
                        
                        correctEdgePos = self.getCoordsOfCorrectEdgePos(edge)
                        correctCorrespondingEdgePos = self.getEdgeCorrespondingPosition(correctEdgePos)
                        correctFace = self.getFace(correctCorrespondingEdgePos)
                        dif = correctFace[0] - self.getFace(edge)[0]
                        if dif < 0:
                            dif += 4
                        if dif == 1:
                            moveUpPiece += " U'"
                        elif dif == 2:
                            moveUpPiece += " U2"
                        elif dif == 3:
                            moveUpPiece += " U"
                        moveDownPiece = "L2"
                        for j in range(correctFace[0]):
                            moveDownPiece = self.convertMovesY(moveDownPiece)
                        edgePieceSolution = moveUpPiece + " " + moveDownPiece
                        solutionAdd += edgePieceSolution + " "
                        break
                elif layer == 3:
                    edgeFace = self.getFace(edge)
                    correspondingEdge = self.getEdgeCorrespondingPosition(edge)
                    correspondingFace = self.getFace(correspondingEdge)
                    correctEdgePos = self.getCoordsOfCorrectEdgePos(edge)
                    correctCorrespondingEdgePos = self.getEdgeCorrespondingPosition(correctEdgePos)
                    correctFace = self.getFace(correctCorrespondingEdgePos)

                    if edgeFace[1] == 0:
                        moveUpPiece = ""
                        dif = correctFace[0] - correspondingFace[0]
                        if dif < 0:
                            dif += 4
                        if dif == 1:
                            moveUpPiece += " U'"
                        elif dif == 2:
                            moveUpPiece += " U2"
                        elif dif == 3:
                            moveUpPiece += " U"

                        moveDownPiece = "L2"
                        for j in range(correctFace[0]):
                            moveDownPiece = self.convertMovesY(moveDownPiece)
                        edgePieceSolution = moveUpPiece + " " + moveDownPiece
                        solutionAdd += edgePieceSolution + " "
                        break
                    else: #If the edge is on the side of top layer
                        moveUpPiece = "F' L F L'"
                        for j in range(self.getFace(edge)[0]):
                            moveUpPiece = self.convertMovesY(moveUpPiece)
                        dif = correctFace[0] - self.getFace(edge)[0] - 1
                        if dif < 0:
                            dif += 4
                        if dif == 1:
                            moveUpPiece += " U'"
                        elif dif == 2:
                            moveUpPiece += " U2"
                        elif dif == 3:
                            moveUpPiece += " U"

                        moveDownPiece = "L2"
                        for j in range(correctFace[0]):
                            moveDownPiece = self.convertMovesY(moveDownPiece)
                        
                        edgePieceSolution = moveUpPiece + " " + moveDownPiece
                        solutionAdd += edgePieceSolution + " "
                        break
        return solution

    def getNextCornerPiecePos(self, pos):
        corners = [
            [[3, 2], [3, 3], [2, 3]], 
            [[5, 2], [6, 3], [5, 3]], 
            [[5, 0], [9, 3], [8, 3]], 
            [[3, 0], [0, 3], [11, 3]], 
            [[3, 6], [2, 5], [3, 5]], 
            [[5, 6], [5, 5], [6, 5]], 
            [[3, 8], [11, 5], [0, 5]], 
            [[5, 8], [8, 5], [9, 5]]
        ]

        for i in range(len(corners)):
            if corners[i][0][0] == pos[0] and corners[i][0][1] == pos[1]:
                return corners[i][1]
            elif corners[i][1][0] == pos[0] and corners[i][1][1] == pos[1]:
                return corners[i][2]
            elif corners[i][2][0] == pos[0] and corners[i][2][1] == pos[1]:
                return corners[i][0]
            
        return [-1, -1]

    def cornerPieceIsSolved(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        pos2 = self.getNextCornerPiecePos(pos)
        pos3 = self.getNextCornerPiecePos(pos2)
        if tiles[pos[0]][pos[1]] == solvedTiles[pos[0]][pos[1]]:
            if tiles[pos2[0]][pos2[1]] == solvedTiles[pos2[0]][pos2[1]]:
                if tiles[pos3[0]][pos3[1]] == solvedTiles[pos3[0]][pos3[1]]:
                    return True
        return False

    def getPositionOfCorner(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        for x in range(len(tiles)):
            for y in range(len(tiles[x])):
                if self.isCornerPiece(x, y):
                    if tiles[x][y] == solvedTiles[pos[0]][pos[1]]:
                        cornerPos = [x, y]
                        nextCorner = self.getNextCornerPiecePos(cornerPos)
                        nextSolvedCorner = self.getNextCornerPiecePos(pos)
                        if tiles[nextCorner[0]][nextCorner[1]] == solvedTiles[nextSolvedCorner[0]][nextSolvedCorner[1]]:
                            return cornerPos
        return [-1, -1]

    def getPositionOfEdge(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        for x in range(len(tiles)):
            for y in range(len(tiles[x])):
                if self.isEdgePiece(x, y):
                    if tiles[x][y] == solvedTiles[pos[0]][pos[1]]:
                        edgePos = [x, y]
                        correspondingEdge = self.getEdgeCorrespondingPosition(edgePos)
                        correspondingSearchEdge = self.getEdgeCorrespondingPosition(pos)
                        if tiles[correspondingEdge[0]][correspondingEdge[1]] == solvedTiles[correspondingSearchEdge[0]][correspondingSearchEdge[1]]:
                            return edgePos
        return [-1, -1]

    def getF2LPositions(self):
        positions = []
        for i in range(4):
            positions.append([])
            for j in range(2):
                positions[i].append([])
                for k in range(2):
                    positions[i][j].append(0)
        corner1 = [3, 6]
        corner2 = [5, 6]
        corner3 = [5, 8]
        corner4 = [3, 8]
        edge1 = [2, 4]
        edge2 = [5, 4]
        edge3 = [8, 4]
        edge4 = [11, 4]

        positions[0][0] = self.getPositionOfCorner(corner1)
        positions[1][0] = self.getPositionOfCorner(corner2)
        positions[2][0] = self.getPositionOfCorner(corner3)
        positions[3][0] = self.getPositionOfCorner(corner4)
        positions[0][1] = self.getPositionOfEdge(edge1)
        positions[1][1] = self.getPositionOfEdge(edge2)
        positions[2][1] = self.getPositionOfEdge(edge3)
        positions[3][1] = self.getPositionOfEdge(edge4)

        return positions

    def isTogetherAtTopLayer(self, pair):
        cornerTopPos = []
        corner = pair[0]
        nextCorner = self.getNextCornerPiecePos(corner)
        lastCorner = self.getNextCornerPiecePos(nextCorner)
        if self.getFace(corner)[1] == 0:
            cornerTopPos = corner
        elif self.getFace(nextCorner)[1] == 0:
            cornerTopPos = nextCorner
        elif self.getFace(lastCorner)[1] == 0:
            cornerTopPos = lastCorner
        else:
            print("ERROR, TRIED TO FIND TWO ADJACENT TOP LAYER PIECES WHEN THERE WERE NONE")
            return False

        edgeTopPos = []
        edge = pair[1]
        nextEdge = self.getEdgeCorrespondingPosition(edge)
        if self.getFace(edge)[1] == 0:
            edgeTopPos = edge
        elif self.getFace(nextEdge)[1] == 0:
            edgeTopPos = nextEdge
        else:
            print("ERROR, TRIED TO FIND TWO ADJACENT TOP LAYER PIECES WHEN THERE WERE NONE")
            return False

        if edgeTopPos[0] + 1 == cornerTopPos[0] and edgeTopPos[1] == cornerTopPos[1]:
            return True
        elif cornerTopPos[0] + 1 == edgeTopPos[0] and edgeTopPos[1] == cornerTopPos[1]:
            return True
        elif edgeTopPos[1] + 1 == cornerTopPos[1] and edgeTopPos[0] == cornerTopPos[0]:
            return True
        elif cornerTopPos[1] + 1 == edgeTopPos[1] and edgeTopPos[0] == cornerTopPos[0]:
            return True
        return False

    def getCornerTopPos(self, corner):
        cornerTopPos = 0
        nextCorner = self.getNextCornerPiecePos(corner)
        lastCorner = self.getNextCornerPiecePos(nextCorner)
        if self.getFace(corner)[1] == 0:
            cornerTopPos = corner
        elif self.getFace(nextCorner)[1] == 0:
            cornerTopPos = nextCorner
        elif self.getFace(lastCorner)[1] == 0:
            cornerTopPos = lastCorner
        else:
            print("ERROR, TRIED TO FIND TOP OF CORNER")
            return [-1, -1]
        return cornerTopPos
        
    def getCornerBottomPos(self, corner):
        cornerTopPos = 0
        nextCorner = self.getNextCornerPiecePos(corner)
        lastCorner = self.getNextCornerPiecePos(nextCorner)
        if self.getFace(corner)[1] == 2:
            cornerTopPos = corner
        elif self.getFace(nextCorner)[1] == 2:
            cornerTopPos = nextCorner
        elif self.getFace(lastCorner)[1] == 2:
            cornerTopPos = lastCorner
        else:
            print("ERROR, TRIED TO FIND TOP OF CORNER")
            return [-1, -1]
        return cornerTopPos
    
    def getEdgeTopPos(self, edge):
        edgeTopPos = 0
        corrEdge = self.getEdgeCorrespondingPosition(edge)
        if self.getFace(edge)[1] == 0:
            edgeTopPos = edge
        elif self.getFace(corrEdge)[1] == 0:
            edgeTopPos = corrEdge
        else:
            print("ERROR, TRIED TO FIND TOP OF EDGE")
            return [-1, -1]
        return edgeTopPos

    def isPaired(self, pair):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        corner = pair[0]
        cornerTopPos = self.getCornerTopPos(corner)
        edgeTopPos = 0
        edge = pair[1]
        nextEdge = self.getEdgeCorrespondingPosition(edge)
        if self.getFace(edge)[1] == 0:
            edgeTopPos = edge
        elif self.getFace(nextEdge)[1] == 0:
            edgeTopPos = nextEdge
        else:
            print("ERROR, TRIED TO FIND TWO PAIRED TOP LAYER PIECES WHEN THERE WERE NONE")
            return False
        if tiles[cornerTopPos[0]][cornerTopPos[1]] == tiles[edgeTopPos[0]][edgeTopPos[1]]:
            return True
        return False

    def getCoordsOfCorrectCornerPos(self, pos):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        for x in range(len(tiles)):
            for y in range(len(tiles[x])):
                if self.isCornerPiece(x, y):
                    if solvedTiles[x][y] == tiles[pos[0]][pos[1]]:
                        solvedCorner = [x, y]
                        nextSolvedCorner = self.getNextCornerPiecePos(solvedCorner)
                        if nextSolvedCorner[0] != -1 and nextSolvedCorner[1] != 1:
                            corrCorner = self.getNextCornerPiecePos(pos)
                            if solvedTiles[nextSolvedCorner[0]][nextSolvedCorner[1]] == tiles[corrCorner[0]][corrCorner[1]]:
                                return solvedCorner
        return [-1, -1]

    def getPairSolution(self, pair):
        corner = pair[0]
        cornerTopPos = self.getCornerTopPos(corner)
        correctCornerTopPos = self.getCoordsOfCorrectCornerPos(cornerTopPos)
        correctCornerTopXFace = self.getFace(correctCornerTopPos)[0]
        cornerXFace = self.getFace(corner)[0]
        dif = cornerXFace - correctCornerTopXFace
        movePiece = ""

        if dif < 0:
            dif += 4
        insertPiece = ""
        if self.getPositionOnFace(corner)[0] == 2:
            if dif == 1:
                movePiece = "U2 "
            elif dif == 2:
                movePiece = "U' "
            elif dif == 0:
                movePiece = "U "
            insertPiece = "F U' F'"
        else:
            if dif == 0:
                movePiece = "U' "
            elif dif == 2:
                movePiece = "U "
            elif dif == 3:
                movePiece = "U2 "
            insertPiece = "B' U B"

        for j in range(correctCornerTopXFace):
            insertPiece = self.convertMovesY(insertPiece)
        pairSolution = movePiece + insertPiece
        return pairSolution

    def equalCorners(self, c1, c2):
        matches = 0
        for i in range(len(c1)):
            for j in range(len(c2)):
                if c1[i] == c2[j]:
                    matches += 1
                    break
        if matches == 3:
            return True
        return False

    def getF2LSolution(self):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        solution = ""
        solutionAdd = ""
        allDone = False
        prioritize = False
        cornerPriority = [""]

        while allDone == False:
            solution += solutionAdd
            self.performMoves(solutionAdd)
            solutionAdd = ""
            F2LPositions = self.getF2LPositions()

            for i in range(len(F2LPositions)):
                corner = F2LPositions[i][0]
                nextCorner = self.getNextCornerPiecePos(corner)
                lastCorner = self.getNextCornerPiecePos(nextCorner)
                cornerTopPos = []
                if self.getLayer(corner) == 3:
                    cornerTopPos = self.getCornerTopPos(corner)
                edge = F2LPositions[i][1]
                edgeTopPos = []
                if self.getLayer(edge) == 3:
                    edgeTopPos = self.getEdgeTopPos(edge)
                pair = F2LPositions[i]
                if prioritize == True:
                    comparison = [tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]]
                    if self.equalCorners(cornerPriority, comparison) == False:
                        continue
                    else:
                        prioritize = False
                if self.cornerPieceIsSolved(corner) and self.edgePieceIsSolved(edge):
                    if i == len(F2LPositions) - 1:
                        allDone = True
                        break
                elif self.getLayer(corner) == 3 and self.getLayer(edge) == 3: #If both pieces already is on top layer
                    if self.isTogetherAtTopLayer(pair): #If they are adjacent as well
                        if self.isPaired(pair): #If they are solved relative to each other
                            solutionAdd += self.getPairSolution(pair) + " "
                            break
                        else: #Only next to each other
                            nextCornerFromTop = self.getNextCornerPiecePos(cornerTopPos)
                            nextCornerFromTopXFace = self.getFace(nextCornerFromTop)[0]
                            correctCorner = self.getCoordsOfCorrectCornerPos(corner)
                            correctNextCorner = self.getNextCornerPiecePos(correctCorner)
                            correctLastCorner = self.getNextCornerPiecePos(correctNextCorner)
                            correctLastCornerXFace = self.getFace(correctLastCorner)[0]
                            dif = nextCornerFromTopXFace - correctLastCornerXFace
                            movePiece = ""
                            if dif < 0:
                                dif += 4
                            if dif == 1:
                                movePiece = "U "
                            elif dif == 2:
                                movePiece = "U2 "
                            elif dif == 3:
                                movePiece = "U' "
                            separatePair = "B' U2 B"
                            for j in range(correctLastCornerXFace):
                                separatePair = self.convertMovesY(separatePair)
                            solutionAdd += movePiece + separatePair + " "
                            prioritize = True
                            cornerPriority = [tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]]
                            break
                    else: #They are not adjacent, pair them up
                        if self.getFace(corner)[1] == 0: #Corner piece is pointing upwards
                            #Position edge on correct side
                            sideEdgePos = self.getEdgeCorrespondingPosition(edgeTopPos)
                            sideEdgeXFace = self.getFace(sideEdgePos)[0]
                            solvedSideEdgePos = self.getCoordsOfCorrectEdgePos(sideEdgePos)
                            solvedSideEdgeXFace = self.getFace(solvedSideEdgePos)[0]
                            dif = sideEdgeXFace - solvedSideEdgeXFace
                            movePiece = ""

                            if dif < 0:
                                dif += 4
                            adder = 0
                            if dif == 1:
                                movePiece = "U "
                                adder = 1
                            elif dif == 2:
                                movePiece = "U2 "
                                adder = 2
                            elif dif == 3:
                                movePiece = "U' "
                                adder = -1
                            
                            #Hide it from slot
                            solvedTopEdgePos = self.getCoordsOfCorrectEdgePos(edgeTopPos)
                            solvedTopEdgeXFace = self.getFace(solvedTopEdgePos)[0]
                            rightFace = solvedSideEdgeXFace + 1
                            leftFace = solvedSideEdgeXFace - 1

                            if rightFace == 4:
                                rightFace = 0
                            if leftFace == -1:
                                leftFace = 3
                            hideEdge = ""
                            showEdge = ""
                            if solvedTopEdgeXFace == rightFace:
                                hideEdge = "L'"
                                showEdge = "L"
                            elif solvedTopEdgeXFace == leftFace:
                                hideEdge = "L"
                                showEdge = "L'"
                            for j in range(solvedSideEdgeXFace):
                                hideEdge = self.convertMovesY(hideEdge)
                                showEdge = self.convertMovesY(showEdge)
                            hideEdge += " "

                            #Position corner on top of hidden edge
                            nextCornerFromTop = self.getNextCornerPiecePos(cornerTopPos)
                            lastCornerFromTop = self.getNextCornerPiecePos(nextCornerFromTop)
                            lastCornerFromTopXFace = self.getFace(lastCornerFromTop)[0]
                            dif = lastCornerFromTopXFace - solvedSideEdgeXFace
                            hoverPiece = ""
                            dif -= adder
                            if dif < 0:
                                dif += 4
                            if dif == 1:
                                hoverPiece = "U "
                            elif dif == 2:
                                hoverPiece = "U2 "
                            elif dif == 3:
                                hoverPiece = "U' "
                            
                            solutionAdd += movePiece + hideEdge + hoverPiece + showEdge + " "
                            prioritize = True
                            cornerPriority = [tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]]
                            break
                        else: #Corner piece is not pointing upwards
                            #Prepare corner
                            solvedCorner = self.getCoordsOfCorrectCornerPos(corner)
                            nextSolvedCorner = self.getNextCornerPiecePos(solvedCorner)
                            lastSolvedCorner = self.getNextCornerPiecePos(nextSolvedCorner)
                            nextCornerFromTop = self.getNextCornerPiecePos(cornerTopPos)
                            lastCornerFromTop = self.getNextCornerPiecePos(nextCornerFromTop)
                            nextCornerFromTopXFace = self.getFace(nextCornerFromTop)[0]
                            nextSolvedCornerXFace = self.getFace(nextSolvedCorner)[0]
                            lastSolvedCornerXFace = self.getFace(lastSolvedCorner)[0]

                            dif = nextCornerFromTopXFace - lastSolvedCornerXFace
                            movePiece = ""
                            wasRight = False

                            if nextCornerFromTop[0] == corner[0] and nextCornerFromTop[1] == corner[1]:
                                dif += 1
                            elif lastCornerFromTop[0] == corner[0] and lastCornerFromTop[1] == corner[1]:
                                dif -= 1
                                wasRight = True
                            if dif < 0:
                                dif += 4
                            if dif == 1:
                                movePiece = "U "
                            elif dif == 2:
                                movePiece = "U2 "
                            elif dif == 3:
                                movePiece = "U' "
                            
                            #Hide corner
                            hidePiece = ""
                            showPiece = ""
                            if wasRight:
                                hidePiece = "F"
                                showPiece = "F'"
                            else:
                                hidePiece = "L'"
                                showPiece = "L"
                            
                            for j in range(nextSolvedCornerXFace):
                                hidePiece = self.convertMovesY(hidePiece)
                                showPiece = self.convertMovesY(showPiece)
                            hidePiece += " "
                            showPiece += " "
                            pairPiece = ""
                            insertPiece = ""

                            if tiles[cornerTopPos[0]][cornerTopPos[1]] == tiles[edgeTopPos[0]][edgeTopPos[1]]: #If same color on top
                                corrEdgeTopPos = self.getEdgeCorrespondingPosition(edgeTopPos)
                                mirrorCornerPos = []
                                if nextCornerFromTop[0] == corner[0] and nextCornerFromTop[1] == corner[1]:
                                    mirrorCornerPos = lastCornerFromTop
                                else:
                                    mirrorCornerPos = nextCornerFromTop
                                corrEdgeTopXFace = self.getFace(corrEdgeTopPos)[0]
                                mirrorCornerXFace = self.getFace(mirrorCornerPos)[0]
                                dif = mirrorCornerXFace - corrEdgeTopXFace
                                if dif < 0:
                                    dif += 4
                                if dif == 1:
                                    movePiece = "U' "
                                elif dif == 2:
                                    movePiece = "U2 "
                                elif dif == 3:
                                    movePiece = "U "

                                prioritize = True
                                cornerPriority = [tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]]
                            else: #If not same colors on top
                                corrEdgeTopPos = self.getEdgeCorrespondingPosition(edgeTopPos)
                                mirrorCornerPos = []
                                solveMirrorCornerPos = []
                                insertion = ""
                                if nextCornerFromTop[0] == corner[0] and nextCornerFromTop[1] == corner[1]:
                                    mirrorCornerPos = lastCornerFromTop
                                    solveMirrorCornerPos = nextSolvedCorner
                                    insertion = "F U F'"
                                else:
                                    mirrorCornerPos = nextCornerFromTop
                                    solveMirrorCornerPos = lastSolvedCorner
                                    insertion = "B' U' B"
                                corrEdgeTopXFace = self.getFace(corrEdgeTopPos)[0]
                                mirrorCornerXFace = self.getFace(mirrorCornerPos)[0]
                                for j in range(self.getFace(solveMirrorCornerPos)[0]):
                                    insertion = self.convertMovesY(insertion)
                                
                                dif = mirrorCornerXFace - corrEdgeTopXFace
                                if dif < 0:
                                    dif += 4
                                if dif == 1:
                                    movePiece = "U "
                                elif dif == 0:
                                    movePiece = "U2 "
                                elif dif == 3:
                                    movePiece = "U' "
                                else:
                                    hidePiece = ""
                                    showPiece = ""

                                if wasRight == True:
                                    insertPiece = "U "
                                else:
                                    insertPiece = "U' "
                                insertPiece += insertion
                            solutionAdd += movePiece + hidePiece + pairPiece + showPiece + insertPiece + " "
                            break
                else: #One of them is not on top layer, check which one and bring it up, then restart
                    if self.getLayer(corner) != 3: #Corner is not on top layer
                        cornerBottomPos = self.getCornerBottomPos(corner)
                        nextCornerBottomPos = self.getNextCornerPiecePos(cornerBottomPos)
                        nextCornerXFace = self.getFace(nextCornerBottomPos)[0]
                        sideEdge = self.getEdgeCorrespondingPosition(edgeTopPos)
                        sideEdgeXFace = self.getFace(sideEdge)[0]

                        #Extract corner from slot
                        extractCorner = "F U F'"
                        if sideEdgeXFace == nextCornerXFace or nextCornerXFace + 2 == sideEdgeXFace or sideEdgeXFace + 2 == nextCornerXFace:
                            extractCorner = "U' F U F'"

                        for j in range(nextCornerXFace):
                            extractCorner = self.convertMovesY(extractCorner)
                        
                        solutionAdd += extractCorner + " "
                        prioritize = True
                        cornerPriority = [tiles[corner[0]][corner[1]], tiles[nextCorner[0]][nextCorner[1]], tiles[lastCorner[0]][lastCorner[1]]]
                        break
                    elif self.getLayer(edge) != 3: #Edge is not on top layer
                        nextCornerTopPos = self.getNextCornerPiecePos(cornerTopPos)
                        nextCornerXFace = self.getFace(nextCornerTopPos)[0]
                        edgeXFace = self.getFace(edge)[0]

                        #Extract corner from slot
                        extractEdge = "F U F'"
                        if self.getPositionOnFace(edge)[0] == 0:
                            extractEdge = "B' U' B"
                            if edgeXFace == nextCornerXFace or edgeXFace + 2 == nextCornerXFace or nextCornerXFace + 2 == edgeXFace:
                                extractEdge = "U' B' U' B"
                        else:
                            extractEdge = "F U F'"
                            if edgeXFace + 1 == nextCornerXFace or nextCornerXFace + 3 == edgeXFace or edgeXFace + 3 == nextCornerXFace or nextCornerXFace + 1 == edgeXFace:
                                extractEdge = "U' F U F'"
                        
                        for j in range(edgeXFace):
                            extractEdge = self.convertMovesY(extractEdge)
                        
                        solutionAdd += extractEdge + " "
                        break
        return solution

    def getCaseOnSticker(self, x, y):
        tiles = self.tiles
        if tiles[x][y] == "U":
            return 1
        return 0

    def rotateCase(self, oldCase):
        newCase = oldCase
        for i in range(len(oldCase)):
            for j in range(len(oldCase[0])):
                newCase[i][j] = oldCase[4 - j][i]
        return newCase

    def getOLLCase(self):
        currentCase = []
        for i in range(5):
            row = []
            for j in range(5):
                row.append(0)
            currentCase.append(row)
        
        #Invalid corners
        currentCase[0][0] = 0
        currentCase[0][4] = 0
        currentCase[4][0] = 0
        currentCase[4][4] = 0

        #Up face + front face
        for i in range(3):
            for j in range(4):
                currentCase[i + 1][j + 1] = self.getCaseOnSticker(i + 3, j)

        #Right, left, back face
        currentCase[0][1] = self.getCaseOnSticker(0, 3)
        currentCase[0][2] = self.getCaseOnSticker(1, 3)
        currentCase[0][3] = self.getCaseOnSticker(2, 3)
        
        currentCase[4][1] = self.getCaseOnSticker(8, 3)
        currentCase[4][2] = self.getCaseOnSticker(7, 3)
        currentCase[4][3] = self.getCaseOnSticker(6, 3)
        
        currentCase[1][0] = self.getCaseOnSticker(11, 3)
        currentCase[2][0] = self.getCaseOnSticker(10, 3)
        currentCase[3][0] = self.getCaseOnSticker(9, 3)
        
        return currentCase

    def getOLLSolution(self):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        casesOLL = self.casesOLL
        solutionsOLL = self.solutionsOLL
        currentCase = self.getOLLCase()
        foundCase = False
        caseNumber = 0
        topTurns = 0

        while foundCase == False:
            for i in range(len(casesOLL)):
                correctCase = True
                for x in range(len(currentCase)):
                    for y in range(len(currentCase)):
                        if currentCase[y][x] != casesOLL[i][x][y]:
                            correctCase = False
                if correctCase == True:
                    foundCase = True
                    caseNumber = i
                    break
            if foundCase == False:
                currentCase = rotateCase(currentCase)
                topTurns += 1
            if topTurns == 4:
                print("NEVER FOUND OLL")
                return ""
        
        movesOLL = ""
        if topTurns == 1:
            movesOLL = "U' "
        elif topTurns == 2:
            movesOLL = "U2 "
        elif topTurns == 3:
            movesOLL = "U "
        movesOLL += solutionsOLL[caseNumber]

        self.performMoves(movesOLL)
        return movesOLL
    
    def rotateTopLayerSides(self, topLayerSides):
        first3sides = ["", "", ""]
        for i in range(len(topLayerSides)):
            if i < 3:
                first3sides[i] = topLayerSides[i]
        if i < 9:
            topLayerSides[i] = topLayerSides[i + 3]
        else:
            topLayerSides[i] = first3sides[i - 9]
        return topLayerSides

    def getCasePLL(self, sides):
        casePLL = []
        for i in range(8):
            casePLL.append([])
    
        cornerBL = [sides[11], sides[0]]
        casePLL[0] = cornerBL
        cornerLF = [sides[2], sides[3]]
        casePLL[2] = cornerLF
        cornerFR = [sides[5], sides[6]]
        casePLL[4] = cornerFR
        cornerRB = [sides[8], sides[9]]
        casePLL[6] = cornerRB
        
        edgeL = [sides[1]]
        casePLL[1] = edgeL
        edgeF = [sides[4]]
        casePLL[3] = edgeF
        edgeR = [sides[7]]
        casePLL[5] = edgeR
        edgeB = [sides[10]]
        casePLL[7] = edgeB
        
        return casePLL

    def getSidesFromCasePLL(self, casePLL):
        sides = []
        for i in range(12):
            sides.append("")
        sides[0] = casePLL[0][1]
        sides[1] = casePLL[1][0]
        sides[2] = casePLL[2][0]
        sides[3] = casePLL[2][1]
        sides[4] = casePLL[3][0]
        sides[5] = casePLL[4][0]
        sides[6] = casePLL[4][1]
        sides[7] = casePLL[5][0]
        sides[8] = casePLL[6][0]
        sides[9] = casePLL[6][1]
        sides[10] = casePLL[7][0]
        sides[11] = casePLL[0][0]
        return sides

    def sidesOfTopLayerAreSolved(self, sides):
        solvedSides = ["L", "L", "L", "F", "F", "F", "R", "R", "R", "B", "B", "B"]
        triedRotations = 0
        while triedRotations < 4:
            correct = True
            for i in range(len(sides)):
                if sides[i] != solvedSides[i]:
                    correct = False
            if correct == True:
                return True
            else:
                solvedSides = self.rotateTopLayerSides(solvedSides)
                triedRotations += 1
        return False

    def isCorrectCasePLL(self, sides, swaps):
        casePLL = self.getCasePLL(sides)
        swappedCase = []
        for i in range(8):
            swappedCase.append([])
        for i in range(len(swaps)):
            if swaps[i] != -1: #Perform the swaps from swaps
                swappedCase[i] = casePLL[swaps[i]]
            else:
                swappedCase[i] = casePLL[i]
        newSides = self.getSidesFromCasePLL(swappedCase)
        if self.sidesOfTopLayerAreSolved(newSides):
            return True
        return False
    
    def getPLLSolution(self):
        tiles = self.tiles
        solvedTiles = self.solvedTiles
        casesPLL = self.casesPLL
        solutionsPLL = self.solutionsPLL

        topLayerSides = []
        for i in range(12):
            topLayerSides.append(tiles[i][3])
        foundCase = False
        caseNumber = 0
        topTurns = 0

        while foundCase == False:
            for i in range(len(casesPLL)):
                if self.isCorrectCasePLL(topLayerSides, casesPLL[i]):
                    foundCase = True
                    caseNumber = i
                    break
            if foundCase == False:
                topLayerSides = self.rotateTopLayerSides(topLayerSides)
                topTurns += 1
            if topTurns == 4:
                print("NEVER FOUND PLL")
                return ""
        
        solutionPLL = ""
        if topTurns == 1:
            solutionPLL = "U "
        elif topTurns == 2:
            solutionPLL = "U2 "
        elif topTurns == 3:
            solutionPLL = "U' "
        
        solutionPLL += solutionsPLL[caseNumber]
        self.performMoves(solutionPLL)

        auf = ""

        if tiles[4][3] == "R":
            auf += " U'"
        elif tiles[4][3] == "L":
            auf += " U"
        elif tiles[4][3] == "B":
            auf += " U2"

        self.performMoves(auf)
        solutionPLL += auf
        return solutionPLL

    def removeDoubleSpaceFromString(self, inp):
        output = ""
        lastChar = ""
        for i in range(len(inp)):
            if inp[i] != " " or lastChar != " ":
                output += inp[i]
            lastChar = inp[i]
        return output

    def fixDoubleLetters(self, solution):
        if solution[0] == " ":
            solution = solution[1:]

        parts = solution.split(" ")
        if len(solution) == 0:
            return solution
        newSolution = ""
        last = parts[0] + " "
        lastLetter = parts[0][0]
        i = 1
        while i < len(parts):
            thisLetter = parts[i][0]
            if thisLetter == lastLetter:
                last = ""
                lastRotation = 0
                if len(parts[i - 1]) == 1:
                    lastRotation = 1
                elif parts[i - 1][1] == "'":
                    lastRotation = 3
                elif parts[i - 1][1] == "2":
                    lastRotation = 2

                thisRotation = 0
                if len(parts[i]) == 1:
                    thisRotation = 1
                elif parts[i][1] == "'":
                    thisRotation = 3
                elif parts[i][1] == "2":
                    thisRotation = 2
                
                sumRotation = lastRotation + thisRotation
                if sumRotation % 4 == 0:
                    last = ""
                elif sumRotation % 4 == 1:
                    last = lastLetter + " "
                elif sumRotation % 4 == 2:
                    last = lastLetter + "2 "
                elif sumRotation % 4 == 3:
                    last = lastLetter + "' "
            else:
                newSolution += last
                last = parts[i] + " "
                lastLetter = parts[i][0]
            i += 1
        newSolution += last + " "
        return newSolution
    
    def getSolution(self):
        scramble = self.getScramble()
        
        cross = self.getCrossSolution()
        f2l = self.getF2LSolution()
        oll = self.getOLLSolution()
        pll = self.getPLLSolution()

        solution = cross + " " + f2l + " " + oll + " " + pll

        solution = self.removeDoubleSpaceFromString(solution)
        solution = self.fixDoubleLetters(solution)

        printOut = False
        if printOut == True:
            print("Scramble: " + scramble)
            print("Solution length: " + str(len(solution.split())))
            print("Solution: " + solution)
        return solution

    #Methods to turn the layers of the cube

    #Right layer
    def r(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[2 * cubeSize - 1][i]
            tiles[2 * cubeSize - 1][i] = tiles[2 * cubeSize - 1][cubeSize + i]
            tiles[2 * cubeSize - 1][cubeSize + i] = tiles[2 * cubeSize - 1][cubeSize * 2 + i]
            tiles[2 * cubeSize - 1][cubeSize * 2 + i] = tiles[3 * cubeSize][2 * cubeSize - 1 - i]
            tiles[3 * cubeSize][2 * cubeSize - 1 - i] = temporary
        self.turnFace(2, 1)

    def rPrime(self):
        for i in range(3):
            self.r()

    def r2(self):
        for i in range(2):
            self.r()

    #Left layer
    def l(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[cubeSize][cubeSize * 3 - 1 - i]
            tiles[cubeSize][cubeSize * 3 - 1 - i] = tiles[cubeSize][cubeSize * 2 - 1 - i]
            tiles[cubeSize][cubeSize * 2 - 1 - i] = tiles[cubeSize][cubeSize - 1 - i]
            tiles[cubeSize][cubeSize - 1 - i] = tiles[4 * cubeSize - 1][cubeSize + i]
            tiles[4 * cubeSize - 1][cubeSize + i] = temporary
        self.turnFace(0, 1)

    def lPrime(self):
        for i in range(3):
            self.l()

    def l2(self):
        for i in range(2):
            self.l()

    #Upper layer
    def u(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[i][cubeSize]
            tiles[i][cubeSize] = tiles[cubeSize + i][cubeSize]
            tiles[cubeSize + i][cubeSize] = tiles[cubeSize * 2 + i][cubeSize]
            tiles[cubeSize * 2 + i][cubeSize] = tiles[cubeSize * 3 + i][cubeSize]
            tiles[cubeSize * 3 + i][cubeSize] = temporary
        self.turnFace(1, 0)

    def uPrime(self):
        for i in range(3):
            self.u()

    def u2(self):
        for i in range(2):
            self.u()

    #Down layer
    def d(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[cubeSize * 4 - 1 - i][cubeSize * 2 - 1]
            tiles[cubeSize * 4 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize * 3 - 1 - i][cubeSize * 2 - 1]
            tiles[cubeSize * 3 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize * 2 - 1 - i][cubeSize * 2 - 1]
            tiles[cubeSize * 2 - 1 - i][cubeSize * 2 - 1] = tiles[cubeSize - 1 - i][cubeSize * 2 - 1]
            tiles[cubeSize - 1 - i][cubeSize * 2 - 1] = temporary
        self.turnFace(1, 2)

    def dPrime(self):
        for i in range(3):
            self.d()

    def d2(self):
        for i in range(2):
            self.d()

    #Front layer
    def f(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[cubeSize + i][cubeSize - 1]
            tiles[cubeSize + i][cubeSize - 1] = tiles[cubeSize - 1][cubeSize * 2 - 1 - i]
            tiles[cubeSize - 1][cubeSize * 2 - 1 - i] = tiles[cubeSize * 2 - 1 - i][cubeSize * 2]
            tiles[cubeSize * 2 - 1 - i][cubeSize * 2] = tiles[cubeSize * 2][cubeSize + i]
            tiles[cubeSize * 2][cubeSize + i] = temporary
        self.turnFace(1, 1)

    def fPrime(self):
        for i in range(3):
            self.f()

    def f2(self):
        for i in range(2):
            self.f()

    #Back layer
    def b(self):
        tiles = self.tiles
        cubeSize = self.cubeSize
        for i in range(cubeSize):
            temporary = tiles[cubeSize + i][0]
            tiles[cubeSize + i][0] = tiles[cubeSize * 3 - 1][cubeSize + i]
            tiles[cubeSize * 3 - 1][cubeSize + i] = tiles[cubeSize * 2 - 1 - i][cubeSize * 3 - 1]
            tiles[cubeSize * 2 - 1 - i][cubeSize * 3 - 1] = tiles[0][cubeSize * 2 - 1 - i]
            tiles[0][cubeSize * 2 - 1 - i] = temporary
        self.turnFace(3, 1)

    def bPrime(self):
        for i in range(3):
            self.b()

    def b2(self):
        for i in range(2):
            self.b()

    
    #Turns a face at face x, y
    def turnFace(self, x, y):
        tiles = self.tiles
        cubeSize = self.cubeSize

        temporaryCorner = tiles[cubeSize * x][cubeSize * y]
        tiles[cubeSize * x][cubeSize * y] = tiles[cubeSize * x][cubeSize * y + cubeSize - 1]
        tiles[cubeSize * x][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y + cubeSize - 1]
        tiles[cubeSize * x + cubeSize - 1][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y]
        tiles[cubeSize * x + cubeSize - 1][cubeSize * y] = temporaryCorner

        temporaryEdge = tiles[cubeSize * x + 1][cubeSize * y]
        tiles[cubeSize * x + 1][cubeSize * y] = tiles[cubeSize * x][cubeSize * y + 1]
        tiles[cubeSize * x][cubeSize * y + 1] = tiles[cubeSize * x + 1][cubeSize * y + cubeSize - 1]
        tiles[cubeSize * x + 1][cubeSize * y + cubeSize - 1] = tiles[cubeSize * x + cubeSize - 1][cubeSize * y + 1]
        tiles[cubeSize * x + cubeSize - 1][cubeSize * y + 1] = temporaryEdge
    
    #Returns a string of all tiles on a face
    def faceScramble(self, x, y):
        tiles = self.tiles
        cubeSize = self.cubeSize

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
    def getScramble(self):
        output = ""
        output += self.faceScramble(1, 0)
        output += self.faceScramble(2, 1)
        output += self.faceScramble(1, 1)
        output += self.faceScramble(1, 2)
        output += self.faceScramble(0, 1)
        output += self.faceScramble(3, 1)
        return output

    def setFace(self, x, y, face):
        tiles = self.tiles

        for i in range(3):
            for j in range(3):
                character = face[j * 3 + i]
                if character == "U":
                    tiles[x * 3 + i][y * 3 + j] = "U"
                elif character == "R":
                    tiles[x * 3 + i][y * 3 + j] = "R"
                elif character == "F":
                    tiles[x * 3 + i][y * 3 + j] = "F"
                elif character == "D":
                    tiles[x * 3 + i][y * 3 + j] = "D"
                elif character == "L":
                    tiles[x * 3 + i][y * 3 + j] = "L"
                elif character == "B":
                    tiles[x * 3 + i][y * 3 + j] = "B"
                
    def insertScramble(self, scramble):
        u = scramble[0:9]
        r = scramble[9:18]
        f = scramble[18:27]
        d = scramble[27:36]
        l = scramble[36:45]
        b = scramble[45:54]
        self.setFace(1, 0, u)
        self.setFace(2, 1, r)
        self.setFace(1, 1, f)
        self.setFace(1, 2, d)
        self.setFace(0, 1, l)
        self.setFace(3, 1, b)