//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    id faveDrink = characterDictionary[@"favorite drink"];
    if (faveDrink == nil) return nil;
    
    return faveDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *faveDrinkArray = [NSMutableArray array];
    for (int i = 0; i < charactersArray.count; i++) {
        
        faveDrinkArray[i] = [charactersArray[i] valueForKey:@"favorite drink"];
  
    }
    return faveDrinkArray;
 }


 - (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *myCharacterDictionary = [characterDictionary mutableCopy];
    [myCharacterDictionary setObject:[NSString stringWithFormat:@"Toby or not Toby"] forKey:@"quote"];
    return myCharacterDictionary;
}

@end
