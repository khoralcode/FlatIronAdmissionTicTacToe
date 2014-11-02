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
#define ACCEPTABLE_CHARECTERS @[@"0",@"1",@"2", @"3", @"4", @"5", @"6", @"7", @"8"]


NSMutableArray *boardCells;
NSUInteger pickIndex;
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
        NSString *selection = [NSString stringWithFormat:@"%zd", pickIndex];
        NSLog(@"NSString Selection %@",selection);
    if  (![selection  isEqual: ACCEPTABLE_CHARECTERS])//--------NOT WORKING!!
           // || (@"1")|| (@"2")|| @"3"|| @"4"|| @"5"|| @"6"|| @"7"|| @"8"]
    {NSLog(@" invalid character, numerics 0-8 only please");}
        else
    [myGame selectCell:pickIndex];
     
      
    }
        
return 0;

  }
   
   }
}
