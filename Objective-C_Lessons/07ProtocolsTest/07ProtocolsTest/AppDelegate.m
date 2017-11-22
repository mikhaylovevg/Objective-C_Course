//
//  AppDelegate.m
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 15.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMPatient.h"
#import "EMStudent.h"
#import "EMDeveloper.h"
#import "EMDancer.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    EMDancer *dancer1 = [[EMDancer alloc] init];
    EMDancer *dancer2 = [[EMDancer alloc] init];
    
    EMStudent *student1 = [[EMStudent alloc] init];
    EMStudent *student2 = [[EMStudent alloc] init];
    EMStudent *student3 = [[EMStudent alloc] init];
    
    EMDeveloper *developer1 = [[EMDeveloper alloc] init];
    
    dancer1.name = @"dancer 1";
    dancer2.name = @"dancer 2";
    student1.name = @"student 1";
    student2.name = @"student 2";
    student3.name = @"student 3";
    developer1.name = @"developer 1";
    
    NSArray *patients = @[dancer1, student1, developer1, student2, student3, dancer2];
    
    for (id <EMPatient> patient in patients) {
        
        NSLog(@"Patient name = %@", patient.name);
        if ([patient respondsToSelector:@selector(howIsYourFamily)]) {
            NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
        }
        if ([patient respondsToSelector:@selector(howIsYourJob)]) {
            NSLog(@"How is your job? \n%@", [patient howIsYourJob]);
        }
        if (![patient areYouOK]) {
            [patient takePill];
            
            if (![patient areYouOK]) {
                [patient makeShot];
            }
        }
    }
    /*
    for (NSInteger i = 0; i < patients.count; i++) {
        id <EMPatient> patient = patients[i];
    }
    */
        
    return YES;
}


@end
