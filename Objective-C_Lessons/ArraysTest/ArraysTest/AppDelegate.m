//
//  AppDelegate.m
//  ArraysTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMObject.h"
#import "EMChild.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //NSArray* array = [[NSArray alloc] initWithObjects: @"String1", @"String2", @"String3", nil];
    
    //NSArray* array = [NSArray arrayWithObjects:@"String1", @"String2", @"String3", nil];
    
    //NSArray* array = @[@"String1", @"String2", @"String3"];
    
    /*
    for (int i = 0; i < [array count]; i++) {
        NSLog(@"%@", [array objectAtIndex:i]);
        NSLog(@"i = %d", i);
    }
    
    for (int i = [array count] - 1; i >=0 ; i--) {
        NSLog(@"%@", [array objectAtIndex:i]);
        NSLog(@"i = %d", i);
    }
    */
    
    /*
    for (NSString* string in array) {
        NSLog(@"%@", string);
        NSLog(@"index = %d", [array indexOfObject:string]);
    }
    */
    
    EMObject *obj1 = [[EMObject alloc] init];
    EMObject *obj2 = [[EMObject alloc] init];
    EMChild *obj3 = [[EMChild alloc] init];
    
    obj1.name = @"Object 1";
    obj2.name = @"Object 2";
    [obj3 setName:@"Object 3"];
    
    [obj3 setLastName:@"Last Name"];
    
    NSArray *array = [NSArray arrayWithObjects:obj3, obj2, obj1, nil];
    
    for (EMObject *obj in array) {
        NSLog(@"name = %@", obj.name);
        [obj action];
        
        if ([obj isKindOfClass:[EMChild class]]) {
            EMChild *child = (EMChild *)obj;
            NSLog(@"last name = %@", child.lastName);
        }
    }
    
    return YES;
}

@end
