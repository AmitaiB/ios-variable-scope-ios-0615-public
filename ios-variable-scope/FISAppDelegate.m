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

//1) return the array + string w/o modifying the original.
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *newArray = [NSMutableArray arrayWithArray: array];
    [newArray addObject:string];
    return newArray;
}

//2) return the # of ALL-CAPS elements in an array.
-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array {
    NSUInteger totalElementsAllCaps = 0;
    NSCharacterSet *setOfNotUpperCase = [[NSCharacterSet characterSetWithRange:NSMakeRange(65,90)] invertedSet];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSString *aString = [array objectAtIndex:idx];
        NSScanner *stringScanner = [[NSScanner alloc] initWithString:aString];
//DIDN'T WORK; in hindsight, I should have just committed, and branched it off... if (!([array[idx] rangeOfCharacterFromSet:setOfNotUpperCase])) {
        
        //if the string contains any not-uppercase, returns YES. --de Morgan's Law-->
        //if returns NO, then the string does not contain any not-uppercase (it's all caps).
        if ([stringScanner scanCharactersFromSet:setOfNotUpperCase] == NO) {
            totalElementsAllCaps++;
        }
    }];
    
    /* DIDN'T WORK
     for (NSString *word in array) {
        if (![[*array[word]] rangeOfCharacterFromSet:lowerCaseLetterCharacterSet]) {
            totalElementsAllCaps++;
        }
    }
     */
    return totalElementsAllCaps;
}


//3) rewrite removeAll... so that it works as intended.
-(void)removeAllElementsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
