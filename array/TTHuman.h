//
//  TTHuman.h
//  array
//
//  Created by sergey on 1/14/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTHuman : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) NSInteger growth;
@property (nonatomic,assign) NSInteger weight;
@property (nonatomic,strong) NSString *gender;

- (void)move;

- (id)initHumanWithName:(NSString *)name growth:(NSInteger)growth weight:(NSInteger)weight gender:(NSString *)gender;

@end
