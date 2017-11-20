//
//  EMStudent.h
//  HW06Types
//
//  Created by Evgeny Mikhaylov on 19.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Male,
    Female
} EMGender;

typedef enum {
    Fail = 2,
    Satisfactory,
    Good,
    Excellent
} EMGpa;

@interface EMStudent : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) EMGender gender;
@property (assign, nonatomic) EMGpa gpa;

@end
