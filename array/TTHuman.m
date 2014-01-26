//
//  TTHuman.m
//  array
//
//  Created by sergey on 1/14/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTHuman.h"

@implementation TTHuman

- (void)move {
    
    NSLog(@"%@ is humman",_name);
}

- (id)initHumanWithName:(NSString *)name growth:(NSInteger)growth weight:(NSInteger)weight gender:(NSString *)gender {
    
    if (self = [super init]) {
        _name = name;
        _growth = growth;
        _weight = weight;
        _gender = gender;
    }
    
    return  self;
}

@end
