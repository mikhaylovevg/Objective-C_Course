//
//  AppDelegate.m
//  HW06Types
//
//  Created by Evgeny Mikhaylov on 19.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMStudent.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    EMStudent* student = [[EMStudent alloc] init];
    student.name = @"Igor";
    student.gender = Male;
    student.gpa = Good;
    NSLog(@"name: %@, gender: %@, gpa: ", student.name, student.gender == 0 ? @"Male" : @"Female");
    
    CGRect rect = CGRectMake(3, 3, 3, 3);
    
    for (NSInteger count = 0; count < 10; count++) {
        CGPoint point = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
        
        NSLog(@"hit#%ld - %@ - %@" ,(count + 1), NSStringFromCGPoint(point), CGRectContainsPoint(rect, point) ? @"include" : @"NO");
    }
    
    return YES;
}

@end
