//
//  ViewController.m
//  导航条的内容
//
//  Created by liuxingchen on 16/10/11.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航条内容
    self.navigationItem.title = @"根导航控制器";
    //设置导航条左边的按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"⬅️" style:UIBarButtonItemStyleDone target:self action:@selector(leftBtn)];
    //设置导航条的view(可自定义)
//    self.navigationItem.titleView = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    /*
     UINavigationItem:控制导航条的内容
     UIBarButtonItem:控制导航条上的按钮内容
     */
    
    //在ios7以后默认导航条上的按钮会渲染成蓝色,可以通过代码告诉系统按钮不要渲染图片
    UIImage *image = [UIImage imageNamed:@"navigationbar_friendsearch"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(righthBtn)];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"navigationbar_friendsearch"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"navigationbar_friendsearch_highlighted"] forState:UIControlStateHighlighted];
    //导航条上的内容位置不能由开发者决定，开发者只能控制尺寸大小
    button.frame = CGRectMake(500, 500, 30, 30);
    //控件的尺寸由图片决定
    [button sizeToFit];
    
    //设置导航条右边的按钮为自定义控件
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
}
-(void)righthBtn
{
    NSLog(@"%s, line = %d",__FUNCTION__,__LINE__);
}
-(void)leftBtn
{
    NSLog(@"%s, line = %d",__FUNCTION__,__LINE__);
}
- (IBAction)push:(id)sender {
    OneViewController *vc = [[OneViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
