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

@property (nonatomic, getter=isWinner)BOOL winner;
@property (nonatomic, strong)  NSMutableArray *boardCells;
@property (nonatomic) NSInteger *pickIndex;
//@property (nonatomic)BOOL isWinner:(NSMutableArray *)boardCells;

-(void) selectCell:(NSInteger)pickIndex;
-(TicTacToe_Game *) initWithArray:(NSMutableArray *)boardCells;


@end
