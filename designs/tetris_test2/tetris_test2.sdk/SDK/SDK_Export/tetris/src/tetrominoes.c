#include "tetrominoes.h"



// rotation tables for each tetronimo
// use like: TETRONIMOES[piece_id][rotation][row]
int TETRONIMOES[N_TETRONIMOES][4][4] = {
    // piece_id = 0 -- I
    {
        {0x0, 0x0, 0xF, 0x0},
		{0x2, 0x2, 0x2, 0x2},
		{0x0, 0xF, 0x0, 0x0},
		{0x4, 0x4, 0x4, 0x4},
    },
    // piece_id = 1 -- L
    {
		{0x0, 0x0, 0x7, 0x1},
		{0x0, 0x3, 0x2, 0x2},
		{0x0, 0x4, 0x7, 0x0},
		{0x0, 0x2, 0x2, 0x6},
    },
    // piece_id = 2 -- J
    {
		{0x0, 0x0, 0x7, 0x4},
		{0x0, 0x2, 0x2, 0x3},
		{0x0, 0x1, 0x7, 0x0},
		{0x0, 0x6, 0x2, 0x2},
    },
    // piece_id = 3 -- S
    {
		{0x0, 0x0, 0x6, 0x3},
		{0x0, 0x1, 0x3, 0x2},
		{0x0, 0x6, 0x3, 0x0},
		{0x0, 0x2, 0x6, 0x4},
    },
    // piece_id = 4 -- Z
    {
		{0x0, 0x0, 0x3, 0x6},
		{0x0, 0x2, 0x3, 0x1},
		{0x0, 0x3, 0x6, 0x0},
		{0x0, 0x4, 0x6, 0x2},
    },
    // piece_id = 5 -- O
    {
		{0x0, 0x0, 0x6, 0x6},
		{0x0, 0x0, 0x6, 0x6},
		{0x0, 0x0, 0x6, 0x6},
		{0x0, 0x0, 0x6, 0x6},
    },
    // piece_id = 6 -- T
    {
		{0x0, 0x0, 0x7, 0x2},
		{0x0, 0x2, 0x3, 0x2},
		{0x0, 0x2, 0x7, 0x0},
		{0x0, 0x2, 0x6, 0x2},
    }
};

// Given a board array, reset it to empty
void clear_board(board_t board)
{
	int i;
	for (i = 0; i < N_ROWS; i++) {
		board[i] = 0;
	}
}

// Place the given piece on the given board
// Returns 1 if placed with no conflicts, 0 if there was a conflict
int place_piece(piece_t piece, board_t board)
{
	int ret = 1;
    int i;
    for (i = 0; i < 4; i++) {
        board[piece.position.y + i]
              = ((board[piece.position.y + i] << 4)
              | TETRONIMOES[piece.piece_id][piece.rotation][i]
                << (piece.position.x + 4) ) >> 4;
    }
    return ret;
}

// Grab bag piece generation state
int init = 1;
int cur_bag_pos = 0;
int bag[N_TETRONIMOES * 2];

// Generate the next "bag" of pieces
void gen_next(int bag[])
{
	int picked[N_TETRONIMOES] = {0, 0, 0, 0, 0, 0, 0};
	int i;
	for (i = 0; i < N_TETRONIMOES; i++) {
		bag[i] = bag[N_TETRONIMOES + i];
		int new_piece_id;
		do {
			new_piece_id = rand() % 7;
		} while (picked[new_piece_id]);
		picked[new_piece_id] = 1;
		bag[N_TETRONIMOES + i] = new_piece_id;
	}
}

// Decide on the next pieces to be chosen
// Next pieces should be a length 3 array.
// Runs the gen next function to generate a new bag of pieces if needed
void decide_next_piece(int* next_pieces) {
	if (init == 1) {
		gen_next(bag);
		gen_next(bag);
		init = 0;
	}

	if (cur_bag_pos == N_TETRONIMOES) {
		gen_next(bag);
		cur_bag_pos = 0;
	}

	next_pieces[0] = bag[cur_bag_pos];
	next_pieces[1] = bag[cur_bag_pos + 1];
	next_pieces[2] = bag[cur_bag_pos + 2];

	cur_bag_pos++;
}

// Create a new piece positioned at the top centre of the board
// Piece ID determines which type of piece is created
piece_t create_piece(int piece_id) {
	piece_t piece;

	piece.piece_id = piece_id;

	// Initial position is top centre
	piece.position.x = (N_COLS - 4) / 2;
	piece.position.y = N_ROWS - 4;

	piece.rotation = 0;

	clear_board(piece.board);
	place_piece(piece, piece.board);

	return piece;
}

// Chech that the game has not finished
// Do this by calling this function with the most recent piece that was added at the top of the screen
// If that piece conflicts with the current board the game is over
int check_game_over(piece_t piece, board_t board)
{
	int ret = 0;
	int i;
    for (i = 0; i < 4; i++) {
        if (((board[piece.position.y + i] << 4)
              & TETRONIMOES[piece.piece_id][piece.rotation][i]
                << (piece.position.x + 4) ) >> 4)
        	ret = 1;
    }
    return ret;
}

// Shift a piece left (MSB -> LSB)
// Uses the board to determine if it can be shifted
int shift_left(piece_t *piece, board_t board)
{
	int i;
	for (i = 0; i < N_ROWS; i++) {
		// Check bounds
		if (piece->board[i] & 0x1) {
			return 0;
		}
		// Check if collision with block in board
		if (piece->board[i] >> 1 & board[i]) {
			return 0;
		}
	}
	// Actually shift
	piece->position.x -= 1;
	clear_board(piece->board);
	place_piece(*piece, piece->board);

	return 1;
}

// Shift a piece right (LSB -> MSB)
// Uses the board to determine if it can be shifted
int shift_right(piece_t *piece, board_t board)
{
	int i;
	for (i = 0; i < N_ROWS; i++) {
		// Check bounds
		if (piece->board[i] & (1 << (N_COLS - 1))) {
			return 0;
		}
		// Check if collision with block in board
		if ((piece->board[i] << 1) & board[i]) {
			return 0;
		}
	}
	// Actually shift
	piece->position.x += 1;
	clear_board(piece->board);
	place_piece(*piece, piece->board);

	return 1;
}

// Drop a piece down one level. Stop if that the bottom or on top of another piece
// returns 0 if the piece can be dropped, 0 otherwise
int drop_piece(piece_t * piece, board_t board)
{
	int i;

    // Check if at bottom
    if (piece->board[0]) {
        return 0;
    }

	// check if there is another piece below
	for (i = 1; i < N_ROWS; i++) {
		if (piece->board[i] & board[i - 1]) {
			return 0;
		}
	}

	piece->position.y -= 1;
	clear_board(piece->board);
	place_piece(*piece, piece->board);

	return 1;
}

// Rotate the given piece. Uses the board to determine if it can be rotated
// Returns 1 if the rotation was successful, 0 otherwise
int rotate(piece_t * piece, board_t board)
{
    int new_rotation = (piece->rotation + 1) % 4;
    int x = piece->position.x;
    int y = piece->position.y;

    int i, j;
    for (i = 0; i < 4; i++) {
        // Check if rotated underneath
        if ((y + i > N_ROWS - 1 || y + i < 0)
                && TETRONIMOES[piece->piece_id][new_rotation][i]) {
            return 0;
        }

        // Check if colliding with the side
        int mask = 1;
        for (j = 0; j < 4; j++) {
            if ((x + j < 0 || x + j > N_COLS - 1) && (mask & TETRONIMOES[piece->piece_id][new_rotation][i])) {
                return 0;
            }
            mask = mask << 1;
        }

        // Check if colliding with another piece
        if( board[y + i] & (TETRONIMOES[piece->piece_id][new_rotation][i]
               << x)) {

         return 0;
         }
     }
     piece->rotation = new_rotation;
     clear_board(piece->board);
     place_piece(*piece, piece->board);
     return 1;
}

// clear completed lines and shift the rest down
// Return the number of lines cleared
int clear_lines(board_t board) {
	int i, j;
	int n_cleared = 0;

	for (i = 0; i < N_ROWS - 1; i++) {
		// if line cleared, shift above rows down
		if (board[i] == 0x3FF) {
			for (j = i; j < N_ROWS - 2; j++) {
				board[j] = board[j + 1];
			}
			board[N_ROWS - 1] = 0;
			n_cleared++;
			i--;
		}
	}
	return n_cleared;
}
