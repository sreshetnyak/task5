//
//  TTAnimal.h
//  array
//
//  Created by sergey on 1/26/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTAnimal : NSObject

@property (nonatomic,strong) NSString *nickname;
@property (nonatomic,assign) NSInteger feetCount;

- (id)initWithNickname:(NSString *)nickname feetCount:(NSInteger)feetCount;
- (void)move;

@end
