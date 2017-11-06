//
//  AppDelegate.m
//  HW05Arrays
//
//  Created by Evgeny Mikhaylov on 06.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMHuman.h"
#import "EMBicyclist.h"
#import "EMRunner.h"
#import "EMSwimmer.h"
#import "EMRacer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    EMHuman* human         = [[EMHuman alloc] init];
    EMBicyclist* bicyclist = [[EMBicyclist alloc] init];
    EMRunner* runner       = [[EMRunner alloc] init];
    EMSwimmer* swimmer     = [[EMSwimmer alloc] init];
    EMRacer* racer         = [[EMRacer alloc] init];
    
    human.name   = @"Maxim";
    human.height = 1.78f;
    human.weight = 68.f;
    human.gender = @"male";
    
    bicyclist.name   = @"Oleg";
    bicyclist.height = 2.03f;
    bicyclist.weight = 58.8f;
    bicyclist.gender = @"male";
    
    runner.name   = @"Kate";
    runner.height = 1.63f;
    runner.weight = 50.f;
    runner.gender = @"female";
    
    swimmer.name   = @"Dima";
    swimmer.height = 1.65f;
    swimmer.weight = 78.2f;
    swimmer.gender = @"male";
    
    racer.name   = @"Anna";
    racer.height = 1.50f;
    racer.weight = 49.6f;
    racer.gender = @"female";
    racer.car = @"BMW";
    racer.age = 30;
    
    // level - pupil
     
    NSArray* arrayOfHumans = [NSArray arrayWithObjects:human, bicyclist, runner, swimmer, nil];

    for (EMHuman* human in arrayOfHumans) {
        
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", human.name, human.gender, human.height, human.weight);
        
        [human moving];
    }
    
    NSLog(@"--------------------------------------------------------");
    
    // level - student
    NSArray* arrayOfHumans2 = [[NSArray alloc] initWithObjects:human, bicyclist, runner, swimmer, racer, nil];
    
    for (int i = [arrayOfHumans2 count] - 1; i >= 0; i--) {
     
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", [arrayOfHumans2[i] name], [arrayOfHumans2[i] gender], [arrayOfHumans2[i] height], [arrayOfHumans2[i] weight]);
        
        [arrayOfHumans2[i] moving];
        
        if ([arrayOfHumans2[i] isKindOfClass:[EMRacer class]]) {
            
            EMRacer* racer = (EMRacer*) arrayOfHumans2[i];
            
            NSLog(@"%@ %d years old, car: %@", racer.name, racer.age, racer.car);
        }
        
    }
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
