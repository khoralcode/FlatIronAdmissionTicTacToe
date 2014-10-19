//
//  Cell.m
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "Cell.h"


@implementation Cell

//-(char)cellMark
//{
//    return self.cellMark;
//}
-(void)setCellMark:(char)cellMark
{
    cellMark = 'X';
}
-(BOOL)isTaken
{
    if (!self.cellMark)
    {_isTaken = NO;}
    return NO;
    
}

-(int)cellIndex
{
    return (self.cellIndex);
}





@end

