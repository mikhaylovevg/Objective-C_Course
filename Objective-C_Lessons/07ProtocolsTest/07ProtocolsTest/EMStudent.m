//
//  EMStudent.m
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 15.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMStudent.h"

@implementation EMStudent

- (void) study {
    
}

#pragma mark - EMPatient
- (BOOL) areYouOK {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"Student %@ takes makes a shot", self.name);
}

- (NSString *) howIsYourFamily{
    return @"My famaly is doing well!";
}
@end
