/*
 * tetris_ai_io.h
 *
 *  Function to interface with the tetris AI control module
 *
 *  Created on: 2015-03-10
 *      Author: derek
 */
#ifndef TETRIS_AI_IO_H_
#define TETRIS_AI_IO_H_

#include "tetrominoes.h"

void reverse_tetronimoes();
void write_state(board_t board, int next_piece);
void get_moves(int * moves);
void make_moves(int * moves, piece_t * piece, board_t board);

#endif /* TETRIS_AI_IO_H_ */
