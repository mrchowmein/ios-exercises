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
    
    
    NSString *favCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([cheeseName hasSuffix:@" cheese"]) {
        NSRange range = [cheeseName rangeOfString:@" cheese"];
        NSString *cheeseNameOnly = [cheeseName substringToIndex:range.location];
        return cheeseNameOnly;
    }
    
    else if ([cheeseName hasSuffix:@" Cheese"]) {
        NSRange range = [cheeseName rangeOfString:@" Cheese"];
        NSString *cheeseNameOnly = [cheeseName substringToIndex:range.location];
        return cheeseNameOnly;
    }
    
    else {
    NSString *cheeseNameOnly = [NSString stringWithFormat:@"%@", cheeseName];
    return cheeseNameOnly;
    
    }
    ;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *numberCheese = [NSString stringWithFormat:@"%lu cheese", cheeseCount];
        return numberCheese;
        
    } else {
        NSString *numberCheese = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
        return numberCheese;
    }
    
    
    
    return nil;
}

@end
