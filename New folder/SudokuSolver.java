public class SudokuSolver {
    static final int N = 9;

    // Function to print the Sudoku grid
    static void printGrid(int[][] grid) {
        for (int row = 0; row < N; row++) {
            for (int col = 0; col < N; col++) {
                System.out.print(grid[row][col] + " ");
            }
            System.out.println();
        }
    }

    // Function to check if 'num' can be placed in grid[row][col]
    static boolean isSafe(int[][] grid, int row, int col, int num) {
        // Check the row
        for (int x = 0; x < N; x++) {
            if (grid[row][x] == num) {
                return false;
            }
        }

        // Check the column
        for (int x = 0; x < N; x++) {
            if (grid[x][col] == num) {
                return false;
            }
        }

        // Check the 3x3 subgrid
        int startRow = row - row % 3, startCol = col - col % 3;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (grid[i + startRow][j + startCol] == num) {
                    return false;
                }
            }
        }

        return true;
    }

    // Function to find an empty cell in the grid
    static boolean findEmptyLocation(int[][] grid, int[] emptyLocation) {
        for (int row = 0; row < N; row++) {
            for (int col = 0; col < N; col++) {
                if (grid[row][col] == 0) {
                    emptyLocation[0] = row;
                    emptyLocation[1] = col;
                    return true;
                }
            }
        }
        return false;
    }

    // Function to solve the Sudoku puzzle using backtracking
    static boolean solveSudoku(int[][] grid) {
        int[] emptyLocation = new int[2];
        
        // If no empty space is left, the puzzle is solved
        if (!findEmptyLocation(grid, emptyLocation)) {
            return true;
        }

        int row = emptyLocation[0];
        int col = emptyLocation[1];

        // Consider digits 1 to 9
        for (int num = 1; num <= 9; num++) {
            // Check if placing 'num' in grid[row][col] is safe
            if (isSafe(grid, row, col, num)) {
                grid[row][col] = num;

                // Recursively try to fill the rest of the grid
                if (solveSudoku(grid)) {
                    return true;
                }

                // If placing 'num' doesn't lead to a solution, reset the cell
                grid[row][col] = 0;
            }
        }

        return false; // Triggers backtracking
    }

    public static void main(String[] args) {
        int[][] grid = {
            {5, 3, 0, 0, 7, 0, 0, 0, 0},
            {6, 0, 0, 1, 9, 5, 0, 0, 0},
            {0, 9, 8, 0, 0, 0, 0, 6, 0},
            {8, 0, 0, 0, 6, 0, 0, 0, 3},
            {4, 0, 0, 8, 0, 3, 0, 0, 1},
            {7, 0, 0, 0, 2, 0, 0, 0, 6},
            {0, 6, 0, 0, 0, 0, 2, 8, 0},
            {0, 0, 0, 4, 1, 9, 0, 0, 5},
            {0, 0, 0, 0, 8, 0, 0, 7, 9}
        };

        if (solveSudoku(grid)) {
            printGrid(grid);
        } else {
            System.out.println("No solution exists");
        }
    }
}
