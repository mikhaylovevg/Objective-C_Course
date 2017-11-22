//
//  EMDancer.h
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 20.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EMPatient.h"

@interface EMDancer : NSObject <EMPatient>

@property (strong, nonatomic) NSString *fovoriteDance;
@property (strong, nonatomic) NSString *name;

- (void) dance;

@end
