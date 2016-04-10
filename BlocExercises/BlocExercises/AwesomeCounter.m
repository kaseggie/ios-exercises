//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   
    NSInteger lowNumber;
    NSInteger highNumber;
    NSMutableString *numbers = [@"" mutableCopy];

    if (number > otherNumber) {
        lowNumber = otherNumber;
        highNumber = number;
    } else {
        lowNumber = number;
        highNumber = otherNumber;
    }
    
    for (NSInteger n = lowNumber; n <= highNumber; n++) {
      
        [numbers appendString:[NSString stringWithFormat:@"%ld",n]];
        
    }
    
    return numbers;
}

@end
