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
@synthesize cellDisplay = _cellDisplay;

-(NSString*)cellMark
{
    return _cellMark;
}
-(NSString*)cellDisplay
{
    
    return _cellDisplay;
}

//-(void)setCellDisplay:(NSString *)cellDisplay
//{
//   if (_cellMark)
//      
//    cellDisplay =   [NSString stringWithFormat:@"%@",_cellMark ];
//     else cellDisplay =  [NSString stringWithFormat:@"%zd",_cellIndex ];
//    
//            
//}
-(void)setCellMark:(NSString*)player
{
    _cellMark= player;
}

-(NSInteger*)cellIndex
{
    return _cellIndex;
}

@end

