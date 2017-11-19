//
//  EMParentClass.m
//  FunctionTest
//
//  Created by Evgeny Mikhaylov on 04.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMParentClass.h"

@implementation EMParentClass

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"Instance of parent class is initialized");
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I AM EMParentClass %@", self);
}

- (void) sayHello {
    NSLog(@"Parent say hello! %@", self);
}

- (void) say:(NSString *) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString *) string and:(NSString *) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString *) string and:(NSString *) string2 andAfterThat:(NSString *) string3 {
    NSLog(@"%@, %@, %@", string, string2, string3);
}

- (NSString *) saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

-(NSString *) saySomething {
    NSString *string = [self saySomeNumberString];    
    return string;
}

@end
