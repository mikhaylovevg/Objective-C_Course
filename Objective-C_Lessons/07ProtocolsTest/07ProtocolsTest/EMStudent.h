//
//  EMStudent.h
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 15.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EMPatient.h"

@interface EMStudent : NSObject <EMPatient>

@property (strong, nonatomic) NSString *univercityName;
@property (strong, nonatomic) NSString *name;

- (void) study;

@end
