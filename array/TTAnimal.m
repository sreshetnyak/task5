//
//  TTAnimal.m
//  array
//
//  Created by sergey on 1/26/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTAnimal.h"

@implementation TTAnimal


- (id)initWithNickname:(NSString *)nickname feetCount:(NSInteger)feetCount {

    if (self = [super init]) {
        _nickname = nickname;
        _feetCount = feetCount;
    }
    
    return self;
}

- (void)move {

    NSLog(@"move animal");
}

@end
