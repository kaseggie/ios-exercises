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

/*- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSArray *faveDrinkArray;
    for (NSInteger idx = 0; idx < charactersArray.count; idx++) {
        
    faveDrinkArray[idx] = charactersArray[idx, @"favorite drink"];
  
    }
    return faveDrinkArray;
 }
*/

/* - (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
 WORK HERE
    return @{};
}
*/
@end
