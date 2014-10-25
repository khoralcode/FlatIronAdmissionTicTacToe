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
        for (int i = 0; i< cellCount; i++){
            Cell *cell = [[Cell alloc]init];
            {[self.boardCells addObject:cell];}
            cell.cellIndex = i;
    
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
    
        if ([[_boardCells objectAtIndex:pickIndex]cellMark])
    
        {NSLog(@"That cell is taken, please choose another");}
    
    else{
    Cell* myCell = [_boardCells objectAtIndex:pickIndex];
        [myCell setCellMark:player];turnCount++;
        if ([self winner:_boardCells]){NSLog(@"player %@ wins!", player);}
    
    else if (![self winner:_boardCells])
    {NSLog(@" Player %@ marked cell %ld with an %@, its turn %i of %i", player, [myCell cellIndex],[myCell cellMark], turnCount, cellCount);}

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

         {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:6]cellMark]);}
        
    
    
 else if
     
    ((([[[boardCells objectAtIndex:4]cellMark] isEqualToString:[[boardCells objectAtIndex:6]cellMark]])&&([[[boardCells objectAtIndex:4]cellMark] isEqualToString:[[boardCells objectAtIndex:2]cellMark]]))&& !nil )

         {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:6]cellMark]);}
       
    
    
 else if
     
    ((([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:4]cellMark]])&&([[[boardCells objectAtIndex:0]cellMark] isEqualToString:[[boardCells objectAtIndex:8]cellMark]]))&& !nil )
    
 {turnCount = cellCount;winner = YES;NSLog (@" %@ is winner!", [[boardCells objectAtIndex:6]cellMark]);};
   
}
    return  winner;
}
 

-(void)printGame
{
//   // if (!null) %s, else "" , also need to convert @"" to C string, in order to work with printf
//
//    printf ("+--------------------+\n"
//            "|      |      |      |\n"
//            "|  %s  |  %s  |  %s  |\n"
//            "|      |      |      |\n"
//            "+--------------------+\n"
//            "|      |      |      |\n"
//            "|  %s  |  %s  |  %s  |\n"
//            "|      |      |      |\n"
//            "+--------------------+\n"
//            "|      |      |      |\n"
//            "|  %s  |  %s  |  %s  |\n"
//            "|      |      |      |\n"
//            "+--------------------+\n"
//
//            ,[[_boardCells objectAtIndex:0]cellMark],[[_boardCells objectAtIndex:1]cellMark],[[_boardCells objectAtIndex:2]cellMark],[[_boardCells objectAtIndex:3]cellMark],[[_boardCells objectAtIndex:4]cellMark],[[_boardCells objectAtIndex:5]cellMark],[[_boardCells objectAtIndex:6]cellMark],[[_boardCells objectAtIndex:7]cellMark],[[_boardCells objectAtIndex:8]cellMark]);
}
@end
