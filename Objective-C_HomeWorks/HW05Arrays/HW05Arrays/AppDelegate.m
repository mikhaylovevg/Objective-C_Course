//
//  AppDelegate.m
//  HW05Arrays
//
//  Created by Evgeny Mikhaylov on 06.11.17.
//  Copyright © 2017 EM. All rights reserved.
//

#import "AppDelegate.h"
#import "EMHuman.h"
#import "EMBicyclist.h"
#import "EMRunner.h"
#import "EMSwimmer.h"
#import "EMRacer.h"
#import "EMAnimal.h"
#import "EMCat.h"
#import "EMDog.h"
/*
 задание: чтобы не импортить всю эту простыню, попробуй сделать так, чтобы моно было заимпортить только два хедера:
 #import "EMHumans.h"
 #import "EMAnimals.h"
*/

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    EMHuman *human         = [[EMHuman alloc] init];
    EMBicyclist *bicyclist = [[EMBicyclist alloc] init];
    EMRunner *runner       = [[EMRunner alloc] init];
    EMSwimmer *swimmer     = [[EMSwimmer alloc] init];
    EMRacer *racer         = [[EMRacer alloc] init];
    
    human.name   = @"Maxim";
    human.height = 1.78;
    human.weight = 68.0;
    human.gender = @"male";
    
    bicyclist.name   = @"Oleg";
    bicyclist.height = 2.03;
    bicyclist.weight = 58.8;
    bicyclist.gender = @"male";
    
    runner.name   = @"Kate";
    runner.height = 1.63;
    runner.weight = 50.0;
    runner.gender = @"female";
    
    swimmer.name   = @"Dima";
    swimmer.height = 1.65;
    swimmer.weight = 78.2;
    swimmer.gender = @"male";
    
    racer.name   = @"Anna";
    racer.height = 1.50;
    racer.weight = 49.6;
    racer.gender = @"female";
    racer.car = @"BMW";
    racer.age = 30;
    
    NSLog(@"----level pupil----");
    
    NSArray *humans = @[human, bicyclist, runner, swimmer];
    //  в студенческом проекте можно допустить такое имя, но в боевых никто не использует префиксы array/set/dictionary. Это видно сразу при обращении. Тут достаточно использовать NSArray *humans = ...
    
    for (EMHuman *human in humans) {
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", human.name, human.gender, human.height, human.weight);
        //  Задача: попробуй это логирование реализовать через переопределение description (https://developer.apple.com/documentation/objectivec/nsobject/1418799-description?language=objc)

        [human moving];
    }
    
    NSLog(@"----level student----");
    
    NSArray *someHumans = @[human, bicyclist, runner, swimmer, racer];
    
    for (NSInteger i = someHumans.count - 1; i >= 0; i--) {
        EMHuman *current = someHumans[i];
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", current.name, current.gender, current.height, current.weight);
        [current moving];
        
        if ([current isKindOfClass:[EMRacer class]]) {
            EMRacer *racer = (EMRacer *) current;
            NSLog(@"%@ %ld years old, car: %@", racer.name, racer.age, racer.car);
        }
    }
    
    NSLog(@"----level master----");
    
    EMAnimal *animal = [[EMAnimal alloc] init];
    animal.type = @"animal";
    animal.nickname = @"Rex";
    animal.year = 1;
    
    EMCat *cat = [[EMCat alloc] init];
    cat.type = @"cat";
    cat.nickname = @"Kasha";
    cat.year = 2;
    
    EMDog *dog = [[EMDog alloc] init];
    dog.type = @"dog";
    dog.nickname = @"Dzhulbars";
    dog.year = 5;
    
    NSArray *humansAndAnimals = @[human, bicyclist, runner, swimmer, racer, animal, cat, dog];
    
    for (NSInteger i = 0; i < humansAndAnimals.count; i++) {
        
        NSObject *current = (NSObject *) humansAndAnimals[i];
        
        if ([current isKindOfClass:[EMHuman class]]) {
            //  доставай array[i] единожды и потом с ним рабоотай
            // c NSObject правильно???
            
            EMHuman *someHuman = (EMHuman *) current;
            
            NSLog(@"%@", NSStringFromClass([EMHuman class]));
            NSLog(@"%@ - %@ - %.2f meters - %.1f kg", someHuman.name, someHuman.gender, someHuman.height, someHuman.weight);
            [someHuman moving];
            
        } else if ([current isKindOfClass:[EMAnimal class]]) {
            
            EMAnimal* someAnimal = (EMAnimal *) current;
            
            NSLog(@"%@", NSStringFromClass([EMAnimal class]));
            NSLog(@"%@ - %@ - %ld years old", someAnimal.type, someAnimal.nickname, someAnimal.year);
            [someAnimal moving];
        }
    }
    
    NSLog(@"----level star----");

    NSArray *animals = @[animal, cat, dog];
    
    NSInteger count = MAX(animals.count, someHumans.count);
    
    for (NSInteger i = 0; i < count; i++) {
        if (i < someHumans.count) {
            
            EMHuman *currentHuman = someHumans[i];
            
            NSLog(@"HUMAN %@ - %@ - %.2f meters - %.1f kg", currentHuman.name, currentHuman.gender, currentHuman.height, currentHuman.weight);
        }
        if (i < animals.count) {
            
            EMAnimal *currentAnimal = animals[i];
            
            NSLog(@"ANIMAL %@ - %@  - %ld years old", currentAnimal.type, currentAnimal.nickname, currentAnimal.year);

        }
    }
    
    NSLog(@"----level superstar----");

    NSArray *total = @[racer, dog, bicyclist, runner, cat, swimmer, animal, human];
   
    NSArray *sortedWithComparator = [someHumans sortedArrayUsingComparator:^NSComparisonResult(EMHuman *p1, EMHuman *p2){
        return [p1.name compare:p2.name];
    }];
    for (EMHuman *human in sortedWithComparator) {
        NSLog(@"%@ - %@", NSStringFromClass([EMHuman class]), human.name);
    }
    
    NSSortDescriptor *nicknameSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"nickname" ascending:YES];
    
    NSArray *sortedWithDescriptors = [animals sortedArrayUsingDescriptors:@[nicknameSortDescriptor]];
    for (EMAnimal *animal in sortedWithDescriptors) {
        NSLog(@"%@ - %@", NSStringFromClass([EMAnimal class]), animal.nickname);
    }
    
    NSArray *sorted = [total sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSString *key1, *key2;
        if ([obj1 isKindOfClass:[EMHuman class]]) {
            EMHuman *current = (EMHuman *) obj1;
            key1 = current.name;
        } else if ([obj1 isKindOfClass:[EMAnimal class]]) {
            EMAnimal *current = (EMAnimal *) obj1;
            key1 = current.nickname;
        }
        if ([obj2 isKindOfClass:[EMHuman class]]) {
            EMHuman *current = (EMHuman *) obj2;
            key2 = current.name;
        } else if ([obj2 isKindOfClass:[EMAnimal class]]) {
            EMAnimal *current = (EMAnimal *) obj2;
            key2 = current.nickname;
        }
        return [key1 compare:key2];
    }];
    // правильно с NSObject?? и нормально, что у меня везде в циклах current, или поточнее обозначать
    for (NSObject *current in sorted) {
        
        if ([current isKindOfClass:[EMHuman class]]) {
            
            EMHuman *human = (EMHuman *) current;
            NSLog(@"%@ - %@", NSStringFromClass([EMHuman class]), human.name);
            
        } else if ([current isKindOfClass:[EMAnimal class]]) {
            
            EMAnimal* animal = (EMAnimal *) current;
            NSLog(@"%@ - %@", NSStringFromClass([EMAnimal class]), animal.nickname);
        }
    }
    return YES;
}

@end
