//
//  EMObject.m
//  ParametrsTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMObject.h"

@implementation EMObject


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

- (id) copyWithZone:(NSZone *)zone {
    EMObject* newObject = [[EMObject alloc] init];
    newObject.name = self.name;
    return newObject;
    
}


@end
