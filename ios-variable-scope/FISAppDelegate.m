//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


    return YES;
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    //Need a DEEP copy...
    NSMutableArray *outputArray = [array mutableCopy];
    [outputArray addObject:string];
    return outputArray;
}

-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array {
    __block NSUInteger totalNumOfCaps = 0;
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSArray *arrayOfCharacters = [NSArray arrayWithArray:[array[idx] componentsSeparatedByString:@""]];
        for (NSString *unitString in arrayOfCharacters) {
            NSCharacterSet *allCaps = [NSCharacterSet capitalizedLetterCharacterSet];
            unichar charToTest = [unitString characterAtIndex:0];
            if ([allCaps characterIsMember:charToTest]) {
                totalNumOfCaps += 1;
            }
        }
    }];
    return totalNumOfCaps;
}

-(void)removeAllElementsFromArray:(NSMutableArray *)array
{
    [array removeAllObjects];
}

@end
