//
//  AppView.h
//  应用管理
//
//  Created by Gate on 15/12/24.
//  Copyright © 2015年 Gate. All rights reserved.
//

#import <UIKit/UIKit.h>
@class App;
@interface AppView : UIView
@property (strong, nonatomic) IBOutlet UIImageView *iconView;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic ,strong)  App*app;
+ (instancetype)appView;
+ (instancetype)appViewWithApp:(App *)app;
@end
