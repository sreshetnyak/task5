//
//  TTViewController.m
//  array
//
//  Created by sergey on 1/13/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTViewController.h"
#import "TTHuman.h"
#import "TTCyclist.h"
#import "TTSwimmer.h"
#import "TTRunner.h"
#import "TTStudent.h"
#import "TTKote.h"
#import "TTDog.h"
#import "TTAnimal.h"

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TTHuman *human = [[[TTHuman alloc]initHumanWithName:@"Sergey" growth:20 weight:50 gender:@"male"]autorelease];
    TTCyclist *cyclist = [[[TTCyclist alloc]initHumanWithName:@"Arthur" growth:20 weight:50 gender:@"male"]autorelease];
    TTRunner *runer1 = [[[TTRunner alloc]initHumanWithName:@"Aleksander" growth:20 weight:50 gender:@"male"]autorelease];
    TTRunner *runer2 = [[[TTRunner alloc]initHumanWithName:@"Viktor" growth:20 weight:50 gender:@"male"]autorelease];
    TTSwimmer *swimmer = [[[TTSwimmer alloc]initHumanWithName:@"Anna" growth:20 weight:50 gender:@"female"]autorelease];
    TTStudent *student = [[[TTStudent alloc]initHumanWithName:@"George" growth:20 weight:50 gender:@"male" curses:5]autorelease];
    TTKote *kote = [[[TTKote alloc]initWithNickname:@"murchik" feetCount:4]autorelease];
    TTDog *dog = [[[TTDog alloc]initWithNickname:@"Aiki" feetCount:4]autorelease];
    
    
    NSArray *objArray = [[[NSArray alloc]initWithObjects:human,cyclist,swimmer,runer1,runer2,student,kote,dog, nil]autorelease];
    
    NSArray *hummanArray = [[[NSArray alloc]initWithObjects:human,cyclist,swimmer,runer1,runer2,student, nil]autorelease];
    NSArray *animalArray = [[[NSArray alloc]initWithObjects:kote,dog, nil]autorelease];
    
//    NSArray *objArray = [NSArray arrayWithObjects:human,cyclist,swimmer,runer1,runer2,student,kote,dog, nil];
//    
//    NSArray *hummanArray = [NSArray arrayWithObjects:human,cyclist,swimmer,runer1,runer2,student, nil];
//    NSArray *animalArray = [NSArray arrayWithObjects:kote,dog, nil];
    
    //4. В цикле пройти по всем элементам массива и вывести на экран все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "передвижение".
    //11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
    for (id obj in objArray) {
        
        NSLog(@"i am is %@", [obj class]);
        
        if ([obj isKindOfClass:[TTHuman class]]) {
            
            NSLog(@"name %@, growth %d, weigth %d, gender %@",[obj name],[obj growth],[obj weight],[obj gender]);
            
            if ([obj isKindOfClass:[TTStudent class]]) {
                
                TTStudent *stud = (TTStudent *)obj;
                
                NSLog(@"Univer curses %d",stud.curses);
            }
            [obj move];

        
        } else if ([obj isKindOfClass:[TTAnimal class]]) {
            
            
            NSLog(@"nickname %@, feet count %d",[obj nickname],[obj feetCount]);
            
            [obj move];
        
        }

    }
    
    
    //7. Массив выводить в обратном порядке.
    //11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
    
    for (int i = [objArray count]-1; i >= 0 ; --i) {
        
        id obj = [objArray objectAtIndex:i];
        
        NSLog(@"i am is %@", [obj class]);
        
        if ([obj isKindOfClass:[TTHuman class]]) {
            
            NSLog(@"name %@, growth %d, weigth %d, gender %@",[obj name],[obj growth],[obj weight],[obj gender]);
            
            if ([obj isKindOfClass:[TTStudent class]]) {
                
                TTStudent *stud = (TTStudent *)obj;
                
                NSLog(@"Univer curses %d",stud.curses);
            }
            
            [obj move];

        } else if ([obj isKindOfClass:[TTAnimal class]]) {

            NSLog(@"nickname %@, feet count %d",[obj nickname],[obj feetCount]);
            
            [obj move];
            
        }

        
    }
    
    //7. Массив выводить в обратном порядке.
    //11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
    
    for (id obj in [objArray reverseObjectEnumerator]) {
        
        NSLog(@"i am is %@", [obj class]);
        
        if ([obj isKindOfClass:[TTHuman class]]) {
            
            NSLog(@"name %@, growth %d, weigth %d, gender %@",[obj name],[obj growth],[obj weight],[obj gender]);
            
            if ([obj isKindOfClass:[TTStudent class]]) {
                
                TTStudent *stud = (TTStudent *)obj;
                
                NSLog(@"Univer curses %d",stud.curses);
            }
            [obj move];
            
            
        } else if ([obj isKindOfClass:[TTAnimal class]]) {
            
            
            NSLog(@"nickname %@, feet count %d",[obj nickname],[obj feetCount]);
            
            [obj move];
            
        }

        
    }
    
//    Уровень Звезда:
//    (разобраться с тем чего Леша не объяснял! + реальная задача!)
//    
//    12. Поместить всех людей в один массив, а животных в другой массив (количество людей и животных должно быть разное)
//    13. В одном цикле выводить сначала человека а потом животное, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
    
    NSLog(@"__________________________________________");
    
    
    
    
    for (int i = 0; i < [hummanArray count] + [animalArray count]; i++) {
        
        if ([hummanArray count] > i) {
            id obj = [hummanArray objectAtIndex:i];
            NSLog(@"%@",[obj name]);
        }
        
        if ([animalArray count] > i) {
            id obj = [animalArray objectAtIndex:i];
            NSLog(@"%@",[obj nickname]);
        }

    }
    
//    Уровень Супермен!
//    (кодинг за гранью возможного! + вероятность успеха практически 0! + реальный вызов!)
//    
//    14. Соединить животных и людей в одном массиве.
//    15. Используя нужный метод класса NSArray отсортировать массив (как результат будет другой массив).
//    16. Сортировать так: сначала люди, а потом животные, люди отсортированы по имени, а животные по кличкам
//    17. Реально требует разобраться с сортировкой самому, тяжело, но достойно уважения
    
    
    NSArray *sortedObj = [objArray sortedArrayUsingComparator: ^(id a1, id a2) {
        
        if ([a1 isKindOfClass:[TTHuman class]] && [a2 isKindOfClass:[TTHuman class]]) {
            return [[(TTHuman *)a1 name] compare:[(TTHuman *)a2 name]];
        } else if ([a1 isKindOfClass:[TTAnimal class]] && [a2 isKindOfClass:[TTAnimal class]]) {
            return [[(TTAnimal *)a1 nickname] compare:[(TTAnimal *)a2 nickname]];
        } else if ([a1 isKindOfClass:[TTHuman class]]) {
            
            return NSOrderedAscending;
            
        } else {
            
            return NSOrderedDescending;
        }
        
    }];
    
    NSLog(@"sorted array");
    NSLog(@"__________________________________________");
    
    for (id obj in sortedObj) {
    
        if ([obj isKindOfClass:[TTHuman class]]){
            NSLog(@"%@",[obj name]);
        } else {
            NSLog(@"%@",[obj nickname]);
        }
    }
    
    
//    [human release];
//    [cyclist release];
//    [swimmer release];
//    [runer2 release];
//    [runer1 release];
//    [student release];
//    [kote release];
//    [dog release];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
