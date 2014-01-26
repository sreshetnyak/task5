//
//  TTStudent.m
//  array
//
//  Created by sergey on 1/26/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTStudent.h"

@implementation TTStudent

- (void)move {
    
    [super move];
    
    NSLog(@"%@ is swimmer",self.name);
}

- (id)initHumanWithName:(NSString *)name growth:(NSInteger)growth weight:(NSInteger)weight gender:(NSString *)gender curses:(NSInteger)curses {
    
    if (self = [super init]) {
        self.name = name;
        self.growth = growth;
        self.weight = weight;
        self.gender = gender;
        self.curses = curses;
    }
    
    return  self;
}

@end
