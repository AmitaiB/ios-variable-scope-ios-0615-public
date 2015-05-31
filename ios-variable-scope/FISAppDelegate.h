//
//  FISAppDelegate.h
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//Are these needed? I only put them in to get rid of the error messages.
+ (NSScanner *)scannerWithString:(NSString *)aString;
- (BOOL)scanCharactersFromSet:(NSCharacterSet *)setOfNotUpperCase;

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;

-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array;

-(void)removeAllElementsFromArray:(NSMutableArray *)array;

@end
