//
//  main.m
//  TicTacToe
//
//  Created by Alex on 10/16/14.
//  Copyright (c) 2014 FlatIron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject

@property (nonatomic, strong)  NSArray *cells;

-(void) selectCell:(NSUInteger)index;

-(Cell *)selectedCell:(NSUInteger)index;


@end


@implementation Board

//-(Board)initWith
//{
//    if (self)
//    {
//        for (NSUInteger *cellIndex in [cells]){
//            Cell *myCell = [[Cell alloc]init];
//            
//        }
//    }
//}

-(void) selectCell:(NSUInteger)index
{
    Cell *cell = [self selectedCell:index];
    NSLog(@"cell is %@%@", [myCell cellIndex][myCell cellMark]);
}

-(Cell *)selectedCell:(NSUInteger)index;





-(NSArray *)cells
{
    if (!_cells) _cells = [[NSArray alloc] init];
    return _cells;
}



@end
//-----------------------------------------------------------

@interface Cell : NSObject

//@property (nonatomic)NSString *cellProperties;
@property (nonatomic)BOOL taken;
@property (nonatomic)NSUInteger *cellIndex;
@property (nonatomic)char cellMark;

@end


@implementation Cell

-(NSUInteger *)cellIndex
{
   *Cell
}


-(Cell *)selectedCell:(NSInteger)index
{
    

    return 0;
}

-(BOOL)line:(NSArray *)Cells{
   
    if ( Cells objectAtIndex:[1]) {
        
   
    
//     [7])== cell.value[cells objectAtIndex: 4]){line = 1}else if
//     (cells.objectAtIndex.value  [1] == cells.objectAtIndex.value  [2] == cells.objectAtIndex.value  [3]){line = 1}else if
//     (cells.objectAtIndex.value  [7] == cells.objectAtIndex.value  [8] == cells.objectAtIndex.value  [9]){line = 7}else if
//     (cells.objectAtIndex.value  [3] == cells.objectAtIndex.value  [6] == cells.objectAtIndex.value  [9]){line = 3}else
//         [((cells.objectAtIndex.value  [5] == (cells.objectAtIndex.value  [7] == cells.objectAtIndex.value  [7])||[1] == (cells.objectAtIndex.value  [9] == cells.objectAtIndex.value))){line = 1};
    return 0;
}
@end



int main(int argc, const char * argv[]) {

    
@autoreleasepool{

//BOOL line;
//char player;
//unsigned int p;

    

    

//           NSLog(@"winner", player);
//       } else
//      {NSLog (@"Please select a cell, available cells are: %@", (cells (!value));
//              scanf ("%i",&p);
//              
//     if (cells.objectAtIndex[p] !value)
//         {
//             (cells.objectAtIndex[p] value = player;
//         }
//      else {
//      NSLog (@"Sorry that cell is taken, please choose another");
//            }
//          }
    }
    return 0;
}
