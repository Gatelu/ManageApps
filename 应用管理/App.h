//
//  App.h
//  应用管理
//
//  Created by Gate on 15/12/24.
//  Copyright © 2015年 Gate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface App : NSObject
@property (nonatomic ,copy) NSString *iconName;
@property (nonatomic ,copy) NSString *name;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)appWithDict:(NSDictionary *)dict;

@end
