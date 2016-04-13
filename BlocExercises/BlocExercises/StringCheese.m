//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *shortName;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
       NSRange cheeseRange = [cheeseName rangeOfString:@" cheese"];
       shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
       // NSString *shortName = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
    } else {
       shortName = cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return shortName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *phrase;
    if (cheeseCount == 1) {
        phrase = @"1 cheese";
    } else {
        phrase = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return phrase;
}

@end
