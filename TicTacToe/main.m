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

char *gPlayer;
BOOL isWinner;
NSMutableArray *boardCells;
int pickIndex;
extern int cellCount;

int main(int argc, const char * argv[]) {

   TicTacToe_Game *myGame = [[TicTacToe_Game alloc]initWithArray:(NSMutableArray*)boardCells];
@autoreleasepool{
    int i;
while (!isWinner)
    for (i= 0; i<cellCount; ++i)
    {
         NSLog(@"enter pickIndex");
scanf ("%i", &pickIndex);
    
    [myGame selectCell:pickIndex];
    }
return 0;

  }
//NSLog (@"%lu cells in array in MAIN myGame ",(unsigned long)[[myGame boardCells] count]);
    
    
   }

