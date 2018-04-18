# Eight-Queens-In-Prolog
**Objective :** Writing a program in Prolog to find a solution to the eight queens problem, when the position of one queen is given. The eight queens problem is the problem of placing eight queens on a 8 x 8 chessboard such that no two queens share the same row, column, or diagonals.


Input consists of two single-space separated integers, x y, where x and y denote the x and y coordinates, respectively. These coordinates represent position of one of the queens on the board.</br>
**Example Input:** </br>
4 1</br>

**Example Output(a possible output):**</br>
0 0 0 1 0 0 0 0</br>
0 0 0 0 0 0 1 0</br>
0 0 1 0 0 0 0 0</br>
0 0 0 0 0 0 0 1</br>
0 1 0 0 0 0 0 0</br>
0 0 0 0 1 0 0 0</br>
1 0 0 0 0 0 0 0</br>
0 0 0 0 0 1 0 0</br>

If no solution exists for the given input, the output should be a single line containing “IMPOSSIBLE” without the quotes.

**Notes:**
* Specify the initial goal in the program as
`:-initialization(x).`
* The command used for compiling the program (say, CS16BTECH11001.pl) will be:
`gplc --no-top-level CS16BTECH11001.pl`
* Use gprolog version 1.3.0 or higher
