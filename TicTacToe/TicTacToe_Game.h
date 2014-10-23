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

@property (nonatomic)BOOL winner;
@property (nonatomic, strong)  NSMutableArray *boardCells;
@property (nonatomic) NSInteger *pickIndex;

-(void) selectCell:(NSInteger)pickIndex;
-(TicTacToe_Game *) initWithArray:(NSMutableArray *)boardCells;

//-(void) printGame;

@end
