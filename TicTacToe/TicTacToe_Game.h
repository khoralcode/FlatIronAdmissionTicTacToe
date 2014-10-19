//
//  TicTacToe_Game.h
//  TicTacToe
//
//  Created by Alex on 10/18/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Board.h"
@interface TicTacToe_Game : NSObject

//-(instancetype)initWithObjects:boardCells;
@property (nonatomic)BOOL isWinner;
-(BOOL)isWinner:(NSMutableArray *)boardCells;

@property (nonatomic, strong)  NSMutableArray *boardCells;
@property (nonatomic) int *pickIndex;



-(void) selectCell:(int)pickIndex;
-(Cell *) selectedCell:(NSUInteger)index;
-(TicTacToe_Game *) initWithArray:(NSMutableArray *)boardCells;


//------Cell properties
@property (nonatomic)BOOL isTaken;
@property (nonatomic)int cellIndex;
@property (nonatomic)char cellMark;

@end
