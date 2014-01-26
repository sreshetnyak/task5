//
//  TTStudent.h
//  array
//
//  Created by sergey on 1/26/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTHuman.h"

@interface TTStudent : TTHuman

@property (nonatomic ,assign) NSInteger curses;

- (id)initHumanWithName:(NSString *)name growth:(NSInteger)growth weight:(NSInteger)weight gender:(NSString *)gender curses:(NSInteger)curses;

@end
