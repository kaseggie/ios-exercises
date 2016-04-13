//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSInteger numberInteger = 2 * [number intValue];
    number = [NSNumber numberWithInt:numberInteger];
    return number;
    
    // Note to Falko: how do I get rid of the warning?
}



- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *numArray = [NSMutableArray array];
    NSInteger highNum;
    NSInteger lowNum;
    
    if (number > otherNumber) {
        highNum = number;
        lowNum = otherNumber;
    } else {
        lowNum =number;
        highNum = otherNumber;
    }
    
    NSInteger arrayCount = highNum - lowNum +1;
   
    for (int i = 0; i < arrayCount; i++) {
        [numArray addObject:[NSNumber numberWithInt:lowNum +i]];
       
    }
    
    return numArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSInteger lowestNum = [arrayOfNumbers[0] intValue];
    NSInteger number;
    
    for (int i=0; i <arrayOfNumbers.count -1; i++) {
        number = [arrayOfNumbers[i+1] intValue];
        if (number < lowestNum) {
            lowestNum = number;
        }
    }
    
    // Note to Falko: Not sure if this is correct, seems super tedious to have to unwrap array items everytime you want to compare to integers?
    return lowestNum;
}

@end
