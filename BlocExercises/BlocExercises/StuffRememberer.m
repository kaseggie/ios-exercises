//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
   self.myArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.myCopyArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.myFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.myArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
   // NSMutableArray *myCopyArray = [self.myCopyArray mutableCopy];
    return self.myCopyArray;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.myFloat;
}

@end