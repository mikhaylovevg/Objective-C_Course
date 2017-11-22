//
//  EMDancer.m
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 20.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMDancer.h"

@implementation EMDancer

- (void) dance {
    
}

#pragma mark - EMPatient
- (BOOL) areYouOK {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"Dancer %@ takes makes a shot", self.name);
}

@end
