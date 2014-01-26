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

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TTHuman *human = [[TTHuman alloc]initHumanWithName:@"Sergey" growth:20 weight:50 gender:@"male"];
    TTCyclist *cyclist = [[TTCyclist alloc]initHumanWithName:@"Arthur" growth:20 weight:50 gender:@"male"];
    TTRunner *runer1 = [[TTRunner alloc]initHumanWithName:@"Aleksander" growth:20 weight:50 gender:@"male"];
    TTRunner *runer2 = [[TTRunner alloc]initHumanWithName:@"Viktor" growth:20 weight:50 gender:@"male"];
    TTSwimmer *swimmer = [[TTSwimmer alloc]initHumanWithName:@"Anna" growth:20 weight:50 gender:@"female"];
    
    
    NSArray *objArray = [NSArray arrayWithObjects:human,cyclist,swimmer,runer1,runer2, nil];
    
    
    
    for (id obj in objArray) {
        
        NSLog(@"name %@, growth %d, weigth %d, gender %@",[obj name],[obj growth],[obj weight],[obj gender]);
        [obj move];
    
    }
    
    
    
    [human release];
    [cyclist release];
    [swimmer release];
    [runer2 release];
    [runer1 release];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
