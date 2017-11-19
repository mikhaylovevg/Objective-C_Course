//
//  AppDelegate.m
//  FunctionTest
//
//  Created by Evgeny Mikhaylov on 04.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMParentClass.h"
#import "EMChildClass.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    EMChildClass* parent = [[EMChildClass alloc] init];
    
    [parent sayHello];
    [parent say:@"How are you?"];
    [parent say:@"I was worried about you" and:@"where have you been?"];
    [parent say:@"Hope you are ok!" and:@"Are you?" andAfterThat:@"Are you sure?"];
    
    NSLog(@"%@", [parent saySomething]);
    
    [EMChildClass whoAreYou];
    
    return YES;
}

@end
