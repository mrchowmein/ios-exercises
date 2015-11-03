//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    number = @([number intValue]*2);
    
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *between = [NSMutableArray new];
    for (NSInteger i = number; i <= otherNumber; i++)  {
        [between addObject:@(i)];
    }
    return between;

}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
  
    NSNumber *min=[arrayOfNumbers valueForKeyPath:@"@min.self"];
   
    
    return [min integerValue];
}

@end
