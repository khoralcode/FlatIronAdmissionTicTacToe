//
//  Cell.h
//  TicTacToe
//
//  Created by Alex on 10/17/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

//@property (nonatomic)NSString *cellProperties;
@property (nonatomic)BOOL isTaken;
@property (nonatomic)NSInteger *cellIndex;
@property (nonatomic)char cellMark;
@property (nonatomic) NSInteger *pickIndex;
-(void) selectCell:(NSInteger)pickIndex;
@property (nonatomic, strong)  NSMutableArray *cells;


-(void)addCell:(Cell *)cell;

//-(Cell *)selectedCell:(int)index;
@end
