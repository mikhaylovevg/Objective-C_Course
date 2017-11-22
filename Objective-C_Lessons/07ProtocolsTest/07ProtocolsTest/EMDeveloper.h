//
//  EMDeveloper.h
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 20.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EMPatient.h"

@interface EMDeveloper : NSObject <EMPatient>

@property (assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString *name;

- (void) work;

@end
