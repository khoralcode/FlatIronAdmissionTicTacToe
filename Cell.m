//
//  Cell.m
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "Cell.h"

@implementation Cell
@synthesize cellMark = _cellMark;
@synthesize cellIndex = _cellIndex;

-(NSString*)cellMark
{
    return _cellMark;
}


-(void)setCellMark:(NSString*)player
{
    _cellMark= player;
}

-(NSInteger*)cellIndex
{
    return _cellIndex;
}

@end

