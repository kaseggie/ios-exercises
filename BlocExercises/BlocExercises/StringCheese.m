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
   
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSMutableString *shortMutableName = [cheeseName mutableCopy];
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        [shortMutableName replaceCharactersInRange:cheeseRange withString:@""];
    }

    return shortMutableName;

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSMutableString *mutableCheesePhrase = [NSMutableString stringWithString:@"1 cheese"];
    if (cheeseCount > 1) {
        NSString *manyCheeses = [NSString stringWithFormat:@"%ld cheeses",(long)cheeseCount];
        [mutableCheesePhrase setString:manyCheeses];
        // To discuss: do I always need to use [NSString stringWithFormat...] to add variables to a NSMutableString
    }
    
    return mutableCheesePhrase;
}

@end
