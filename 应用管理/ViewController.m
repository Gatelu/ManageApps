//
//  MJViewController.m
//  01-应用管理
//
//  Created by apple on 14-3-26.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "App.h"
#import "AppView.h"

@interface ViewController ()
/** 存放应用信息 */
@property (nonatomic, strong) NSArray *apps;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加应用信息
    
    // 0.总列数(一行最多3列)
    int totalColumns = 3;
    
    // 1.应用的尺寸
    CGFloat appW = 85;
    CGFloat appH = 90;
    
    // 2.间隙 = (控制器view的宽度 - 3 * 应用宽度) / 4
    CGFloat marginX = (self.view.frame.size.width - totalColumns * appW) / (totalColumns + 1);
    CGFloat marginY = 15;
    
    // 3.根据应用个数创建对应的框框(index 0 ~ 11)
    for (int index = 0; index<self.apps.count; index++) {
        // 3.1.创建view
        AppView *appView = [AppView appViewWithApp:self.apps[index]];
        // 3.2.添加view
        [self.view addSubview:appView];
        
        // 3.3.设置frame
        int row = index / totalColumns;
        int col = index % totalColumns;
        // 计算x和y
        CGFloat appX = marginX + col * (appW + marginX);
        CGFloat appY = 30 + row * (appH + marginY);
        appView.frame = CGRectMake(appX, appY, appW, appH);
        
        // 3.4.设置数据
//        App *app = self.apps[index];
        
//        // 3.4.1.设置图标
//        appView.iconView.image = [UIImage imageNamed:app.iconName];
//        
//        // 3.4.2.设置名称
//        appView.nameLabel.text = app.name;
//        appView.app = app;
    }
}

- (NSArray *)apps
{
    if (_apps == nil) {
        // 初始化
        
        // 1.获得plist的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        
        // 2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        // 3.将dictArray里面的所有字典转成模型对象,放到新的数组中
        NSMutableArray *appArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            // 3.1.创建模型对象
            App *app = [App appWithDict:dict];
            
            // 3.2.添加模型对象到数组中
            [appArray addObject:app];
        }
        
        // 4.赋值
        _apps = appArray;
    }
    return _apps;
}
//-(NSArray *)apps{
//    if (_apps == nil) {
//        NSString *path = [[NSBundle mainBundle] pathForResource:@"app" ofType:@"plist"];
//        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
//        NSMutableArray *appArray = [NSMutableArray array];
//        for (NSDictionary *dict in dictArray) {
//            App *app = [App appWithDict:dict];
//            [appArray addObject:app];
//        }
//        _apps = appArray;
//    }
//    return _apps;
//}
@end
