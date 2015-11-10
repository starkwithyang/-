//
//  ViewController.m
//  点击按钮阴影出现，点击阴影，阴影退出
//
//  Created by yy on 15/11/6.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *myButton =[[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    myButton.backgroundColor =[UIColor redColor];
    [myButton setTitle:@"开始" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(Clickbutton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
}
-(void)Clickbutton{
   // NSLog(@"sfdsgdg");
    _shadow =[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_shadow addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Clickshadow)]];
    _shadow.alpha =0.1;
    _shadow.backgroundColor =[UIColor blackColor];
    [self.view addSubview:_shadow];
    [UIView animateWithDuration:0.3 animations:^{
    _shadow.alpha =0.3;
    }];
    
}
-(void)Clickshadow{
    _shadow.alpha =0.1;
    [_shadow removeFromSuperview];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
