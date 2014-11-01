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



NSMutableArray *boardCells;
NSUInteger pickIndex;  //I realize pickIndex and cellCount need to be pointers, not sure how to convert int to NSinteger.
extern int cellCount;
extern NSString *player;
int turnCount;


int main(int argc, const char * argv[]) {

    
   
    @autoreleasepool{
    
  TicTacToe_Game *myGame = [[TicTacToe_Game alloc]initWithArray:(NSMutableArray*)boardCells];
     
        {
            while (![myGame winner])
    for (turnCount = 0; turnCount<cellCount;)
    {
        if (!turnCount|| (turnCount % 2 == 0))
        {player = @"X";
        }else {
            player = @"O";}
     
        NSLog(@" Player %@ enter cell", player);
        [myGame printGame];
        
scanf ("%li", &pickIndex);
    
    [myGame selectCell:pickIndex];
     
      
    }
        
return 0;

  }
   
   }
}
