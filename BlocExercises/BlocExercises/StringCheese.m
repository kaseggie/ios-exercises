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
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
       NSRange cheeseRange = [cheeseName rangeOfString:@" cheese"];
       NSString *shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
       // NSString *shortName = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
    } else {
       NSString *shortName = cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return shortName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *phrase = @"1 cheese";
    } else {
        NSString *phrase = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return phrase;
}

@end
