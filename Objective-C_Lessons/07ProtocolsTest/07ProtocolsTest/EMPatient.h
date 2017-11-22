//
//  EMPatient.h
//  07ProtocolsTest
//
//  Created by Evgeny Mikhaylov on 21.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EMPatient <NSObject>

@required
@property (strong, nonatomic) NSString *name;
- (BOOL) areYouOK;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString *) howIsYourFamily;
- (NSString *) howIsYourJob;

@end
