//
//  EMBoxer.h
//  PropertiesTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSUInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;

- (NSUInteger) howOldAreYou;

@end
