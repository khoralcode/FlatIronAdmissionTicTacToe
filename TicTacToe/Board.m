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
@end

@implementation Board

-(NSMutableArray *)boardCells
{
    if (!_boardCells) _boardCells = [[NSMutableArray alloc] init];
    return _boardCells;
}



-(Board *) initWithArray:(NSMutableArray *)boardCells;
{
    int cellCount = 9;
    
    if (self){
        for (int i = 0; i< cellCount; i++){
            Cell *cell = [[Cell alloc]init];
           {[self.boardCells addObject:cell];}
            cell.cellIndex = cellCount;
            
        }
    }
    return self;
}

- (void)addCell:(Cell *)cell;
{
    {[self.boardCells addObject:cell];}
}


-(Cell *)selectedCell:(NSUInteger)index
{
    return (Cell *) _boardCells[index];
    
}



@end

    
