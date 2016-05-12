//
//  AppView.m
//  应用管理
//
//  Created by Gate on 15/12/24.
//  Copyright © 2015年 Gate. All rights reserved.
//

#import "AppView.h"
#import "App.h"
@interface AppView()
@end
@implementation AppView
- (void)setApp:(App *)app{
    //固定写法  必须先把别人传得数据赋值给我的成员变量
    self->_app = app;
    self.iconView.image = [UIImage imageNamed:app.iconName];
    self.nameLabel.text = app.name;
}
- (IBAction)download:(UIButton *)sender {
    sender.enabled = NO;
//    [sender setTitle:@"已下载" forState:UIControlStateNormal];
}


/**
 *  第一种写法
 *

 */
//+ (instancetype)appViewWithApp:(App *)app{
//    NSBundle *bundle = [NSBundle mainBundle];
//    // 读取xib文件(会创建xib中的描述的所有对象,并且按顺序放到数组中返回)
//    NSArray *objs = [bundle loadNibNamed:@"AppView" owner:nil options:nil];
//    AppView *appView = [objs lastObject];
//    appView.app = app;
//    return appView;
//}
//+ (instancetype)appView{
//    return [self appViewWithApp:nil];
//}
/**
 *  第二种写法
 */

+ (instancetype)appView{
    NSBundle *bundle = [NSBundle mainBundle];
    // 读取xib文件(会创建xib中的描述的所有对象,并且按顺序放到数组中返回)
    NSArray *objs = [bundle loadNibNamed:@"AppView" owner:nil options:nil];
    return [objs lastObject];
    

}
+ (instancetype)appViewWithApp:(App *)app{
    AppView *appView = [self appView];
    appView.app = app;
    return appView;
}
@end
