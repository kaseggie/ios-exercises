//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *myStarTrekArray = [characterString componentsSeparatedByString:@";"];
    return myStarTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
     NSString *myStarTrekString = [characterArray componentsJoinedByString:@";"];
    return myStarTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *characterMutableArray = [[NSMutableArray alloc] initWithArray:characterArray];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [characterMutableArray sortUsingDescriptors:@[sortDescriptor]];
    
    return characterMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@", "];
    
    NSRange worfRange = [characterString rangeOfString:@"worf" options:NSCaseInsensitiveSearch];
    
    if (worfRange.location != NSNotFound) {
        return YES;
    } else {
        return NO;
    }
    
}

@end
