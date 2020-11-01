import cube
import detector
import motors

if __name__ == "__main__":

    # Detect the scramble
    scramble = detector.getScramble()

    # Generate a solution
    cube = cube.Cube()
    cube.insertScramble(scramble)
    solution = cube.getSolution()

    # Execute the solution
    motors.execute(solution)
