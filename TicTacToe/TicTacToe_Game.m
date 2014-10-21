//
//  TicTacToe_Game.m
//  TicTacToe
//
//  Created by Alex on 10/18/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import "TicTacToe_Game.h"
int cellCount = 9;
 NSString *player;
extern int turnCount;
@implementation TicTacToe_Game


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


-(BOOL)winner:(NSMutableArray *)boardCells{
    
    _winner = NO;
    
    if
        
        (([[[self.boardCells objectAtIndex:1]cellMark] isEqualToString:[[self.boardCells objectAtIndex:2]cellMark]])&&([[[boardCells objectAtIndex:1]cellMark] isEqualToString:[[self.boardCells objectAtIndex:3]cellMark]]))
        
        
    {NSLog (@" %@ is winner!", [[self.boardCells objectAtIndex:1]cellMark]);}
       return _winner = YES;
//    else ()
//    return NO;
    
}
    /*
     //break
     else if
     (([[[boardCells objectAtIndex:7]cellMark] isEqualToString:[[boardCells objectAtIndex:8]cellMark]])&&([[[boardCells objectAtIndex:7]cellMark] isEqualToString:[[boardCells objectAtIndex:9]cellMark]]))
     
     {NSLog (@" %@ is winner!", [[boardCells objectAtIndex:7]cellMark]);}
     _isWinner = YES;
     
     return _isWinner;
     
     
     
     else if([[[boardCells objectAtIndex:3]cellMark] isEqualToString:[[boardCells objectAtIndex:6]cellMark]])&&([[[boardCells objectAtIndex:3]cellMark] isEqualToString:[[boardCells objectAtIndex:9]cellMark]]);
     {NSLog (@" %@ is winner!", [[boardCells objectAtIndex:7]cellMark]);};
     _isWinner = YES;
     
     else if([[[boardCells objectAtIndex:1]cellMark] isEqualToString:[[boardCells objectAtIndex:4]cellMark]])&&([[[boardCells objectAtIndex:1]cellMark] isEqualToString:[[boardCells objectAtIndex:7]cellMark]]);
     {NSLog (@" %@ is winner!", [[boardCells objectAtIndex:7]cellMark]);};
     _isWinner = YES;
     
     
     else if([[[boardCells objectAtIndex:5]cellMark] isEqualToString:[[boardCells objectAtIndex:7]cellMark]])&&([[[boardCells objectAtIndex:5]cellMark] isEqualToString:[[boardCells objectAtIndex:3]cellMark]]);
     {NSLog (@" %@ is winner!", [[boardCells objectAtIndex:7]cellMark]);};
     _isWinner = YES;
     
     
     else ([[[boardCells objectAtIndex:1]cellMark] isEqualToString:[[boardCells objectAtIndex:5]cellMark]])&&([[[boardCells objectAtIndex:1]cellMark] isEqualToString:[[boardCells objectAtIndex:9]cellMark]]);
     
     {NSLog (@" %@ is winner!", [[boardCells objectAtIndex:7]cellMark]);};
     _isWinner = YES;
     
     //        }*/
 
-(void) selectCell:(NSInteger)pickIndex
{
    
    if (pickIndex > [self.boardCells count]-1)
    {NSLog(@" Invalid index, please try again, allowed index is 0-%d", cellCount -1);}
    else if ([[self.boardCells objectAtIndex:pickIndex]cellMark])
    {  NSLog(@"That cell is taken, please choose another");}
    else{
    Cell* myCell = [_boardCells objectAtIndex:pickIndex];
        [myCell setCellMark:player];turnCount++;

        NSLog(@" Player %@ marked cell %ld with an %@, its turn %i of %i", player, [myCell cellIndex],[myCell cellMark], turnCount, cellCount);}

}



@end
