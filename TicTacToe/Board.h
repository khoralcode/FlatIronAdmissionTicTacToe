//
//  Board.h
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"

@interface Board : NSObject

@property (nonatomic)BOOL isWinner;
-(BOOL)isWinner:(NSMutableArray *)cells;


@end
