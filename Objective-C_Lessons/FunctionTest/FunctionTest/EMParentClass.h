//
//  EMParentClass.h
//  FunctionTest
//
//  Created by Evgeny Mikhaylov on 04.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EMParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;

- (NSString*) saySomeNumberString;
-(NSString*) saySomething;

@end
