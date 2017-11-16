//
//  AppDelegate.m
//  06TypesTest
//
//  Created by Evgeny Mikhaylov on 13.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    BOOL boolVar = YES;
    NSInteger intVar = 10;
    NSUInteger uIntVar = 100;
    CGFloat floatVar = 1.5;
    double doubleVar = 2.5;
    
    NSNumber *boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber *intObject = [NSNumber numberWithInteger:intVar];
    NSNumber *uIntObject = [NSNumber numberWithUnsignedInteger:uIntVar];
    NSNumber *floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber *doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    NSArray *array  = @[boolObject, intObject, uIntObject, floatObject, doubleObject];
    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %ld, floatVar = %f, doubleVar = %f",
          [array[0] boolValue],
          [array[1] integerValue],
          [array[2] unsignedIntegerValue],
          [array[3] floatValue],
          [array[4] doubleValue]);
    
    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %ld, floatVar = %f, doubleVar = %f", boolVar, intVar, uIntVar, floatVar, doubleVar);
    NSLog(@"boolVar = %ld, intVar = %ld, uIntVar = %ld, floatVar = %ld, doubleVar = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));
    
    EMStudent *studentA = [[EMStudent alloc] init];
    studentA.name = @"Best Student";
    NSLog(@"StudentA name = %@", studentA.name);
    
    EMStudent *studentB = studentA;
    studentB.name = @"Bad Student";
    NSLog(@"StudentA name = %@", studentA.name);
    
    NSInteger a = 10;
    NSLog(@"a = %ld", a);
    NSInteger b = a;
    b = 5;
    NSLog(@"a = %ld, b = %ld", a, b);
    
    NSInteger *c = &a;
    *c = 8;
    NSLog(@"a = %ld", a);
    
    NSInteger test = 0;
    NSInteger result = [self test:a testPointer:&test];
    NSLog(@"result = %ld, test = %ld", result, test);
    
    EMTabyretka tab = 10;
    
    EMStudent *student = [[EMStudent alloc] init];
    student.isMale = YES;
    [student setGender: EMGenderFemale];
    
    CGPoint point;
    point.x = 5.5;
    point.y = 10;
    point = CGPointMake(6, 3);
    
    CGSize size;
    size.width = 10;
    size.height = 5;
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    rect = CGRectMake(0, 0, 30, 60);
    
    BOOL resultBool = CGRectContainsPoint(rect, point);
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    NSArray *arrayOfPoints = @[[NSValue valueWithCGPoint:point1],
                               [NSValue valueWithCGPoint:point2],
                               [NSValue valueWithCGPoint:point3],
                               [NSValue valueWithCGPoint:point4],
                               [NSValue valueWithCGPoint:point5]];
    for (NSValue *value in arrayOfPoints) {
        CGPoint p = [value CGPointValue];
        NSLog(@"point = %@", NSStringFromCGPoint(p));
    }
    
    return YES;
}

- (NSInteger) test:(NSInteger) test testPointer:(NSInteger *) testPointer {
    *testPointer = 5;
    return test;
    
}

@end
