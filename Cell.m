//
//  Cell.m
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "Cell.h"
extern char *gPlayer;

@implementation Cell

-(char)cellMark
{
    return _cellMark;
}

-(NSInteger *)cellIndex
{
    return _cellIndex;
}
-(BOOL)isTaken
{
    if (!self.cellMark)
    {_isTaken = NO;}
    return NO;
    
}
-(void) selectCell:(NSInteger)pickIndex
{
    
    if (_isTaken)
    { NSLog(@"That cell is taken, please choose another");}
    else
    {(pickIndex < [self.cells count])?self.cellMark = *(gPlayer): //replace w "current player"
        NSLog(@" Invalid index, please try again");}
                            // need to add code to mark X for player1 and 0 for player2
    _isTaken = YES;
}

-(NSMutableArray *)cells
{
    return _cells;
}
- (void)addCell:(Cell *)cell;
{
    {[self.cells addObject:cell];}
}


@end

