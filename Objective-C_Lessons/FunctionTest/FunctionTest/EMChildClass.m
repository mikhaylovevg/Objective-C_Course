//
//  EMChildClass.m
//  FunctionTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMChildClass.h"

@implementation EMChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of child class is initialized");
    }
    return self;
}


- (NSString*) saySomeNumberString {
    
    return @"Something!";
}


-(NSString*) saySomething {
    
    return [super saySomeNumberString];
}

@end
