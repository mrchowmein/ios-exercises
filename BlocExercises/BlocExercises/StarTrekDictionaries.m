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
    
  
    return [characterDictionary objectForKey: @"favorite drink"];
    
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSArray *favDrinks = [charactersArray valueForKey:@"favorite drink"];
    
    return favDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *charCopy = [characterDictionary mutableCopy];
    [charCopy setObject: @"hello there!!!" forKey: @"quote"];
    
    return charCopy;
}

@end
