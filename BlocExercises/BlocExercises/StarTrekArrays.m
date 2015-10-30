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
    
    NSArray *charArray = [characterString componentsSeparatedByString:@";"];
    
    return charArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *charString = [characterArray componentsJoinedByString:@";"];
    
    
    return charString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *sortedArray = [characterArray sortedArrayUsingDescriptors:@[sort]];
    
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    
    NSPredicate *containWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
   [characterArray filteredArrayUsingPredicate:containWorf];
    
    if (characterArray.count >= 1){
        return YES;
    } else
    {
        return NO;
    }

}

@end
