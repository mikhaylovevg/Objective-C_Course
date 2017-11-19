//
//  EMBoxer.m
//  PropertiesTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMBoxer.h"

@interface EMBoxer ()
@property (assign, nonatomic) NSUInteger nameCount;
@end

@implementation EMBoxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *) inputName {
    
    NSLog(@"setter setName is called");
    
    // iVar - внутренняя переменная:
    _name = inputName;
}

- (NSString*) name {
    
    self.nameCount = self.nameCount + 1;
    //self.nameCount++;
    //self.nameCount += 1;
    
    NSLog(@"name getter is called %ld times", self.nameCount);
    
    return _name;
}

- (NSUInteger) age {
    
    NSLog(@"age getter is called");
    
    return _age;
}

- (NSUInteger) howOldAreYou {
    //return self.age;
    return _age;
}

@end
