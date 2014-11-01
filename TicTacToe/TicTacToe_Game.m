//
//  TicTacToe_Game.m
//  TicTacToe
//
//  Created by Alex on 10/18/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//
#define ACCEPTABLE_CHARECTERS @"0,1,2,3,4,5,6,7,8,9"
#import "TicTacToe_Game.h"
int cellCount = 9;
 NSString *player;
extern int turnCount;


@implementation TicTacToe_Game

@synthesize winner;


-(TicTacToe_Game *) initWithArray:(NSMutableArray *)boardCells
{
    
        if (self){
        for (long i = 0; i< cellCount; i++){
            Cell *cell = [[Cell alloc]init];
            {[self.boardCells addObject:cell];}
            cell.cellIndex = (NSInteger *)i;
      cell.cellDisplay = [NSString stringWithFormat:@"%zd",cell.cellIndex];
        }
    }
    return self;
}

-(NSMutableArray*) boardCells
{
    if (!_boardCells) _boardCells = [[NSMutableArray alloc]init];
    return _boardCells;
}
 
-(void) selectCell:(NSInteger)pickIndex
{
   
    if (pickIndex > [_boardCells count]-1)// || !ACCEPTABLE_CHARECTERS------THIS STILL DOESNT WORK
        {NSLog(@" Invalid index, please try again, allowed index is 0-%d", cellCount -1);}
    
     else   if ([[_boardCells objectAtIndex:pickIndex]cellMark])
    
        {NSLog(@"That cell is taken, please choose another");}
    
    else{
    Cell* myCell = [_boardCells objectAtIndex:pickIndex];
        [myCell setCellMark:player];turnCount++;[self printGame];
       if (turnCount == cellCount)//&& (![self winner:_boardCells]))
       {NSLog(@"Out of Turns, it must be a draw, Game Over!");[self winner:_boardCells];}
       else if
           ([self winner:_boardCells]){ NSLog(@"Game Over!");}
        
        
    
    else if (![self winner:_boardCells])
        [myCell setCellDisplay:player];
    {NSLog(@" Player %@ marked cell %zd with an %@, its turn %i of %i", player, [myCell cellIndex],
           [myCell cellMark], turnCount, cellCount);}
        
       }
    
}


-(BOOL)winner:(NSMutableArray *)boardCells{
 
    winner = NO;
    
    {
    
    if
        
        ((([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:1]cellMark]])&&([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:2]cellMark]]))&& !nil )
        
        
    {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:0]cellMark]);}
   
   
    

  else if
             
        ((([[[boardCells objectAtIndex:6]cellMark] isEqualToString:[[boardCells objectAtIndex:7]cellMark]])&&([[[boardCells objectAtIndex:6]cellMark] isEqualToString:[[boardCells objectAtIndex:8]cellMark]]))&& !nil )
    
  {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:6]cellMark]);}
        
    

  else if
      
      ((([[[boardCells objectAtIndex:2]cellMark] isEqualToString:[[boardCells objectAtIndex:5]cellMark]])&&([[[boardCells objectAtIndex:2]cellMark] isEqualToString:[[boardCells objectAtIndex:8]cellMark]]))&& !nil )
    
         {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:2]cellMark]);}
        
    
 else if
     
     ((([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:3]cellMark]])&&([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:6]cellMark]]))&& !nil )

         {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:0]cellMark]);}
        
    
    
 else if
     
    ((([[[boardCells objectAtIndex:4]cellMark] isEqualToString:[[boardCells objectAtIndex:6]cellMark]])&&([[[boardCells objectAtIndex:4]cellMark] isEqualToString:[[boardCells objectAtIndex:2]cellMark]]))&& !nil )

         {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:4]cellMark]);}
       
    
    
 else if
     
    ((([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:4]cellMark]])&&([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:8]cellMark]]))&& !nil )
    
 {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:0]cellMark]);};
   
}
    return  winner;
}
 

-(void)printGame
{
   

    NSLog (@"+--------------------+");
    NSLog (@"|      |      |      |");
     NSLog(@"|   %@  |  %@   |   %@  |",[[_boardCells objectAtIndex:0]cellDisplay],[[_boardCells objectAtIndex:1]cellDisplay],[[_boardCells objectAtIndex:2]cellDisplay]);
    NSLog (@"|      |      |      |");
    NSLog (@"+--------------------+");
    NSLog (@"|      |      |      |");
    NSLog (@"|   %@  |  %@   |   %@  |",[[_boardCells objectAtIndex:3]cellDisplay],[[_boardCells objectAtIndex:4]cellDisplay],[[_boardCells objectAtIndex:5]cellDisplay]);
    NSLog (@"|      |      |      |");
    NSLog (@"+--------------------+");
    NSLog (@"|      |      |      |");
    NSLog (@"|   %@  |  %@   |   %@  |",[[_boardCells objectAtIndex:6]cellDisplay],[[_boardCells objectAtIndex:7]cellDisplay],[[_boardCells objectAtIndex:8]cellDisplay]);
    NSLog (@"|      |      |      |");
    NSLog (@"+--------------------+");
    
}
@end
