//
//  AppDelegate.h
//  ParametrsTest
//
//  Created by Evgeny Mikhaylov on 05.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EMObject;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (copy, nonatomic, getter = getObject) EMObject* object;

@end

