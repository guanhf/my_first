//
//  ViewController.m
//  Demo1_Tap手势
//
//  Created by tarena on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建Tap手势
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    //2.设置手势的属性
    //设置需要触发手势的点击数
    tapGR.numberOfTapsRequired = 1;
    
    //设置需要触发手势的触点的个数
    tapGR.numberOfTouchesRequired = 1;
    
    //3.将手势与具体的视图绑定在一起
    [self.view addGestureRecognizer:tapGR];
}
//手势的响应方法
-(void)tap:(UITapGestureRecognizer *)gr
{
    CGPoint point = [gr locationInView:self.view];
    NSLog(@"点击的坐标%@",NSStringFromCGPoint(point));
    
}




@end
