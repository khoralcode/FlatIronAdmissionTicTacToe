//
//  TicTacToe_Game.m
//  TicTacToe
//
//  Created by Alex on 10/18/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "TicTacToe_Game.h"
int cellCount = 10;
@interface TicTacToe_Game()

-(BOOL)isWinner:(NSMutableArray *)boardCells;
-(void) selectCell:(int)pickIndex;

@end


@implementation TicTacToe_Game

-(NSMutableArray*) boardCells
{
    if (!_boardCells) _boardCells = [[NSMutableArray alloc]init];
    return _boardCells;
}

-(TicTacToe_Game *) initWithArray:(NSMutableArray *)boardCells
{
    
    
    if (self){
        for (int i = 0; i< cellCount; i++){
            Cell *cell = [[Cell alloc]init];
            {[self.boardCells addObject:cell];}
            cell.cellIndex = cellCount;
            
        }
    }
    return self;
}

//-(instancetype)initWithPlayers:(char) O and:(char) X;
//{

//}
@synthesize cellMark;
@synthesize cellIndex;
-(Cell *)selectedCell:(NSUInteger)index
{
    return (Cell *) _boardCells[index];
    
}


-(void) selectCell:(int)pickIndex
{
    
Cell *cell = [self selectedCell:pickIndex];
if ([cell isTaken])
{ NSLog(@"That cell is taken, please choose another");}
else
{(pickIndex < [self.boardCells count])? [cell setCellMark:'X' ] : //replace w "current player"
   NSLog(@" Invalid index, please try again");}
//need to add code to mark X for player1 and 0 for player2
    NSLog(@" selected cell is %@, its mark is %@", [self selectedCell:cellIndex ], [self selectedCell:cellMark]);
    [cell isTaken];
}

-(BOOL)isWinner:(NSMutableArray *)boardCells{
    
    
    if(([[boardCells objectAtIndex:1]cellMark]) == ([[boardCells objectAtIndex:2]cellMark]) == ([[boardCells objectAtIndex:3]cellMark])){
        NSLog (@" %c is winner!", [[boardCells objectAtIndex:2]cellMark]);
        _isWinner = YES;}
    
    /* if   { ((NSString)cellMark in[boardCells objectAtIndex:1]isEqualToString:(NSString)cellMark in [boardCells objectAtIndex:2])
     //        //== ([[boardCells objectAtIndex:3]cellMark]))
     //        {NSLog (@" %c is winner!", [[boardCells objectAtIndex:1]cellMark]);
     //        _isWinner = YES;
     }
     */
    else if
        (([[boardCells objectAtIndex:7]cellMark]) == ([[boardCells objectAtIndex:8]cellMark]) == ([[boardCells objectAtIndex:9]cellMark])){
            NSLog (@" %c is winner!", [[boardCells objectAtIndex:7]cellMark]);
            _isWinner = YES;}
    else if
        (([[boardCells objectAtIndex:3]cellMark]) == ([[boardCells objectAtIndex:6]cellMark]) == ([[boardCells objectAtIndex:9]cellMark])){
            NSLog (@" %c is winner!", [[boardCells objectAtIndex:3]cellMark]);
            _isWinner = YES;}
    else if  (([[boardCells objectAtIndex:1]cellMark]) == ([[boardCells objectAtIndex:4]cellMark]) == ([[boardCells objectAtIndex:7]cellMark])){
        NSLog (@" %c is winner!", [[boardCells objectAtIndex:1]cellMark]);
        _isWinner = YES;}
    else if (([[boardCells objectAtIndex:5]cellMark]) == ([[boardCells objectAtIndex:7]cellMark]) == ([[boardCells objectAtIndex:3]cellMark])){
        NSLog (@" %c is winner!", [[boardCells objectAtIndex:5]cellMark]);
        _isWinner = YES;}
    else if
        (([[boardCells objectAtIndex:1]cellMark]) == ([[boardCells objectAtIndex:5]cellMark]) == ([[boardCells objectAtIndex:9]cellMark])){
            NSLog (@" %c is winner!", [[boardCells objectAtIndex:5]cellMark]);
            _isWinner = YES;
        }
    return NO;
    
}


@end
