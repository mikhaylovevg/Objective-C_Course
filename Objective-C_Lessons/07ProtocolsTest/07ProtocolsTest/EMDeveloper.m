//
//  EMDeveloper.m
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 20.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import "EMDeveloper.h"

@implementation EMDeveloper

- (void) work {

}

#pragma mark - EMPatient
- (BOOL) areYouOK {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"Developer %@ takes makes a shot", self.name);
}

- (NSString *) howIsYourJob {
    return @"My job is awesome!";
}
@end
