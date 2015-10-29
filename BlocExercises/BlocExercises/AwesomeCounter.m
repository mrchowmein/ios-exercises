//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *inbetween = [[NSMutableString alloc]init];
    
    if (number <= otherNumber){
       
    while (number <= otherNumber)
    {
        [inbetween appendString:[NSString stringWithFormat:@"%ld", number]];
        number = number + 1;
    }
    }
    
        else
    {
        while(number >= otherNumber){
        [inbetween appendString:[NSString stringWithFormat:@"%ld", otherNumber]];
        otherNumber = otherNumber + 1;
        
    }
    
    }
    NSLog(@"%@", inbetween);
    return inbetween;
}

@end
