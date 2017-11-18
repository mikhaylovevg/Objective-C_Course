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

<<<<<<< HEAD
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
=======
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
>>>>>>> master
    
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
    
    NSArray *arrayOfHumans = @[human, bicyclist, runner, swimmer];
    //  в студенческом проекте можно допустить такое имя, но в боевых никто не использует префиксы array/set/dictionary. Это видно сразу при обращении. Тут достаточно использовать NSArray *humans = ...
    
    for (EMHuman *human in arrayOfHumans) {
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", human.name, human.gender, human.height, human.weight);
<<<<<<< HEAD
        //  Задача: попробуй это логирование реализовать через переопределение description (https://developer.apple.com/documentation/objectivec/nsobject/1418799-description?language=objc)
=======
        //  Задача: попробуй это логирование реализовать через переопределение description (https://developer.apple.com/documentation/objectivec/nsobject/1418799-description?language=objc)
>>>>>>> master
        [human moving];
    }
    
    NSLog(@"----level student----");
    
    NSArray *someArrayOfHumans = @[human, bicyclist, runner, swimmer, racer];
    
<<<<<<< HEAD
    for (NSInteger i = someArrayOfHumans.count - 1; i >= 0; i--) {
=======
    for (NSInteger i = [someArrayOfHumans.count] - 1; i >= 0; i--) {
>>>>>>> master
        EMHuman *current = someArrayOfHumans[i];
        NSLog(@"%@ - %@ - %.2f meters - %.1f kg", current.name, current.gender, current.height, current.weight);
        [current moving];
        
        if ([current isKindOfClass:[EMRacer class]]) {
<<<<<<< HEAD
            EMRacer* racer = (EMRacer *) someArrayOfHumans[i];
            //   ошибка: ты работаешь с current, но после его проверки вытаскиваешь иной элемент из массива? Подозжреваю, что именно current ты хочешь форс-кастить
            
            NSLog(@"%@ %ld years old, car: %@", racer.name, racer.age, racer.car);
=======
            
            EMRacer* racer = (EMRacer*) someArrayOfHumans[i];
            //   ошибка: ты работаешь с current, но после его проверки вытаскиваешь иной элемент из массива? Подозжреваю, что именно current ты хочешь форс-кастить
            
            NSLog(@"%@ %ld years old, car: %@", racer.name, (long)racer.age, racer.car);
>>>>>>> master
        }
    }
    
    NSLog(@"----level master----");
    
    EMAnimal *animal = [[EMAnimal alloc] init];
<<<<<<< HEAD
    animal.type = @"animal";
    animal.nickname = @"Rex";
    animal.year = 1;
    //  обращение к проперти через точку
=======
    animal.type = @"animal";
    animal.nickname = @"Rex";
    animal.year = 1;
    //  обращение к проперти через точку
>>>>>>> master
    
    EMCat *cat = [[EMCat alloc] init];
    cat.type = @"cat";
    cat.nickname = @"Kasha";
    cat.year = 2;
    
    EMDog *dog = [[EMDog alloc] init];
    dog.type = @"dog";
    dog.nickname = @"Dzhulbars";
    dog.year = 5;
    
    NSArray *array = @[human, bicyclist, runner, swimmer, racer, animal, cat, dog];
    
    for (NSInteger i = 0; i < array.count; i++) {
        
        if ([array[i] isKindOfClass:[EMHuman class]]) {
            //  доставай array[i] единожды и потом с ним рабоотай
            
            EMHuman *someHuman = (EMHuman *) array[i];
            
            NSLog(@"%@", NSStringFromClass([EMHuman class]));
            NSLog(@"%@ - %@ - %.2f meters - %.1f kg", someHuman.name, someHuman.gender, someHuman.height, someHuman.weight);
            [someHuman moving];
            
        } else if ([array[i] isKindOfClass:[EMAnimal class]]) {
            
            EMAnimal* someAnimal = (EMAnimal *) array[i];
            
            NSLog(@"%@", NSStringFromClass([EMAnimal class]));
            NSLog(@"%@ - %@ - %ld years old", someAnimal.type, someAnimal.nickname, someAnimal.year);
            [someAnimal moving];
        }
    }
    
    NSLog(@"----level star----");

    NSArray *arrayOfAnimals = @[animal, cat, dog];
    
    NSInteger count = MAX(arrayOfAnimals.count, someArrayOfHumans.count);
    
    for (NSInteger i = 0; i < count; i++) {
        if (i < someArrayOfHumans.count) {
            
            EMHuman *currentHuman = someArrayOfHumans[i];
            
            NSLog(@"HUMAN %@ - %@ - %.2f meters - %.1f kg", currentHuman.name, currentHuman.gender, currentHuman.height, currentHuman.weight);
        }
        if (i < arrayOfAnimals.count) {
            
            EMAnimal *currentAnimal = arrayOfAnimals[i];
            
<<<<<<< HEAD
            NSLog(@"ANIMAL %@ - %@  - %ld years old", currentAnimal.type, currentAnimal.nickname, currentAnimal.year);
            //  есть warning
=======
            NSLog(@"ANIMAL %@ - %@  - %ld years old", currentAnimal.type, currentAnimal.nickname, currentAnimal.year);
            //  есть warning
>>>>>>> master
        }
    }
    
    NSLog(@"----level superstar----");

    NSArray *totalArray = @[racer, dog, bicyclist, runner, cat, swimmer, animal, human];
   
    NSArray *sortedWithComparator = [someArrayOfHumans sortedArrayUsingComparator:^NSComparisonResult(EMHuman *p1, EMHuman *p2){
        return [p1.name compare:p2.name];
    }];
    for (EMHuman *human in sortedWithComparator) {
        NSLog(@"%@ - %@", NSStringFromClass([EMHuman class]), human.name);
    }
    
    NSSortDescriptor *nicknameSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"nickname" ascending:YES];
    
    NSArray *sortedWithDescriptors = [arrayOfAnimals sortedArrayUsingDescriptors:@[nicknameSortDescriptor]];
    for (EMAnimal *animal in sortedWithDescriptors) {
        NSLog(@"%@ - %@", NSStringFromClass([EMAnimal class]), animal.nickname);
    }
    
    NSArray *sortedArray = [totalArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSString *key1, *key2;
        if ([obj1 isKindOfClass:[EMHuman class]]) {
            EMHuman * current = (EMHuman *) obj1;
            key1 = current.name;
        } else if ([obj1 isKindOfClass:[EMAnimal class]]) {
            EMAnimal * current = (EMAnimal *) obj1;
            key1 = current.nickname;
        }
        if ([obj2 isKindOfClass:[EMHuman class]]) {
            EMHuman * current = (EMHuman *) obj2;
            key2 = current.name;
        } else if ([obj2 isKindOfClass:[EMAnimal class]]) {
            EMAnimal * current = (EMAnimal *) obj2;
            key2 = current.nickname;
        }
        return [key1 compare:key2];
    }];

    for (NSInteger i = 0; i < [sortedArray count]; i++) {
        
        if ([array[i] isKindOfClass:[EMHuman class]]) {
            
            EMHuman *somehuman = (EMHuman *) array[i];
            NSLog(@"%@ - %@", NSStringFromClass([EMHuman class]), somehuman.name);
            
        } else if ([array[i] isKindOfClass:[EMAnimal class]]) {
            
            EMAnimal* animal = (EMAnimal *) array[i];            
            NSLog(@"%@ - %@", NSStringFromClass([EMAnimal class]), animal.nickname);
        }
    }

    return YES;
}

<<<<<<< HEAD
=======
>>>>>>> master
@end
