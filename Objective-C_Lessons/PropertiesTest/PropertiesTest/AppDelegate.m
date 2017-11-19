//
//  AppDelegate.m
//  PropertiesTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMBoxer.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        
    EMBoxer* boxer = [[EMBoxer alloc] init];
    /*
    boxer.name   = @"Vasiliy";
    boxer.age    = 25;
    boxer.height = 1.8f;
    boxer.weight = 80.f;
    */
    
    [boxer setName:@"Vasiliy"];
    [boxer setAge:25];
    [boxer setHeight:1.8f];
    [boxer setWeight:80.f];
    
    NSLog(@"age = %ld", [boxer howOldAreYou]);
    
    NSLog(@"name = %@", boxer.name);
    NSLog(@"name = %@", [boxer name]);
    NSLog(@"name = %@", [boxer name]);
    NSLog(@"name = %@", [boxer name]);
    
    /*
    NSLog(@"name = %@", boxer.name);
    NSLog(@"age = %d", boxer.age);
    NSLog(@"height = %f", boxer.height);
    NSLog(@"weight = %f", boxer.weight);
    */
    /*
    NSLog(@"name = %@", [boxer name]);
    NSLog(@"age = %d", [boxer age]);
    NSLog(@"height = %f", [boxer height]);
    NSLog(@"weight = %f", [boxer weight]);
    */
    
    return YES;
}

@end
