//
//  EMStudent.h
//  06TypesTest
//
//  Created by Evgeny Mikhaylov on 13.11.2017.
//  Copyright © 2017 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    EMGenderMale,
    EMGenderFemale
} EMGender;

typedef NSInteger EMTabyretka;

@interface EMStudent : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) BOOL *isMale;
@property (assign, nonatomic) EMGender gender;

@end
