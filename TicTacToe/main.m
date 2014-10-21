//
//  main.m
//  TicTacToe
//
//  Created by Alex on 10/16/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Board.h"
#import "TicTacToe_Game.h"


BOOL winner;
NSMutableArray *boardCells;
NSUInteger pickIndex;
 int cellCount;
extern NSString *player;
int turnCount;
int main(int argc, const char * argv[]) {

   TicTacToe_Game *myGame = [[TicTacToe_Game alloc]initWithArray:(NSMutableArray*)boardCells];

    @autoreleasepool{
    

while ((!winner)&& (turnCount<cellCount-1))
    
    
    for (turnCount = 0; turnCount<cellCount;)
    {
        if (!turnCount|| (turnCount % 2 == 0))
        {player = @"X";
        }else {
            player = @"O";}
       
        NSLog(@" Player %@ enter cell", player);
     
        
scanf ("%li", &pickIndex);
    
    [myGame selectCell:pickIndex];
    if ([myGame isWinner]) {NSLog(@"player %@ wins!", player);}
      
    }
        if (turnCount >= cellCount)
        {NSLog(@"Out of Turns, it must be a draw");
return 0;

  }
   
   }
}
