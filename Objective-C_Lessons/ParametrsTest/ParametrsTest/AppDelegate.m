//
//  AppDelegate.m
//  ParametrsTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMObject.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self testObject];
    
    //self.object = [[EMObject alloc] init];

    NSLog(@"TEST IS OVER");
    
    return YES;
}

- (void) testObject {
    EMObject* obj = [[EMObject alloc] init];
    
    self.object = obj;
}

@end
