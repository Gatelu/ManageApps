//
//  App.m
//  应用管理
//
//  Created by Gate on 15/12/24.
//  Copyright © 2015年 Gate. All rights reserved.
//

#import "App.h"

@implementation App
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self == [super init]) {
        self.iconName = dict[@"icon"];
        self.name = dict[@"name"];
    }
    return self;
}
+ (instancetype)appWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}
@end
