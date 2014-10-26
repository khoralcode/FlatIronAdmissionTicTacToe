//
//  Board.m
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "Board.h"
@interface Board()
@property (strong, nonatomic) NSMutableArray *boardCells; //of cells
extern int cellCount;
@end

@implementation Board

-(NSMutableArray *)boardCells
{
    if (!_boardCells) _boardCells = [[NSMutableArray alloc] init];
    return _boardCells;
}



-(Board *) initWithArray:(NSMutableArray *)boardCells;
{

            for (long i = 0; i< cellCount; i++){
                Cell *cell = [[Cell alloc]init];
                {[self.boardCells addObject:cell];}
                cell.cellIndex = (NSInteger *)i;
                                                }
    return self;
}


@end

    
