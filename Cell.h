//
//  Cell.h
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject


@property (nonatomic)BOOL isTaken;
@property (nonatomic)int cellIndex;
@property (nonatomic)char cellMark;
-(void)setCellMark:(char)cellMark;


@end
