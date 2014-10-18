//
//  Board.m
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "Board.h"
extern char *gPlayer;

@implementation Board

-(Board *)initWithArray:(NSMutableArray*)cells
{

    Board *myBoard = [[Board alloc]initWithArray:cells];
    
         return self;
}
-(BOOL)isWinner:(NSMutableArray *)cells{
  
    
    if (([[cells objectAtIndex:1]cellMark]) == ([[cells objectAtIndex:2]cellMark]) == ([[cells objectAtIndex:3]cellMark])){
        NSLog (@" %c is winner!", [[cells objectAtIndex:1]cellMark]);
        _isWinner = YES;}
        else if
            (([[cells objectAtIndex:7]cellMark]) == ([[cells objectAtIndex:8]cellMark]) == ([[cells objectAtIndex:9]cellMark])){
                NSLog (@" %c is winner!", [[cells objectAtIndex:7]cellMark]);
                _isWinner = YES;}
        else if
            (([[cells objectAtIndex:3]cellMark]) == ([[cells objectAtIndex:6]cellMark]) == ([[cells objectAtIndex:9]cellMark])){
                NSLog (@" %c is winner!", [[cells objectAtIndex:3]cellMark]);
                _isWinner = YES;}
        else if  (([[cells objectAtIndex:1]cellMark]) == ([[cells objectAtIndex:4]cellMark]) == ([[cells objectAtIndex:7]cellMark])){
            NSLog (@" %c is winner!", [[cells objectAtIndex:1]cellMark]);
            _isWinner = YES;}
        else if (([[cells objectAtIndex:5]cellMark]) == ([[cells objectAtIndex:7]cellMark]) == ([[cells objectAtIndex:3]cellMark])){
            NSLog (@" %c is winner!", [[cells objectAtIndex:5]cellMark]);
            _isWinner = YES;}
    else if
        (([[cells objectAtIndex:1]cellMark]) == ([[cells objectAtIndex:5]cellMark]) == ([[cells objectAtIndex:9]cellMark])){
            NSLog (@" %c is winner!", [[cells objectAtIndex:5]cellMark]);
            _isWinner = YES;}
        
   return NO;
  
}


@end

    
