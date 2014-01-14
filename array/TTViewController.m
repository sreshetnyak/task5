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

@interface TTViewController ()

@end

@implementation TTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TTHuman *human = [[TTHuman alloc]initHumanWithName:@"sergey" growth:20 weight:50 gender:@"male"];
    
    TTCyclist *cyclist = [[TTCyclist alloc]initHumanWithName:@"aleksander" growth:20 weight:50 gender:@"male"];
    
    NSLog(@"%@",human.name);
    NSLog(@"%@",cyclist.name);
    [human move];
    [cyclist move];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
