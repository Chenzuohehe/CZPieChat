//
//  ViewController.m
//  CZPieChat
//
//  Created by ChenZuo on 16/9/1.
//  Copyright © 2016年 ChenZuo. All rights reserved.
//

#import "ViewController.h"
#import "CZPieChatView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CZPieChatView * view = [[CZPieChatView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    view.strokeColor = [UIColor grayColor];
    view.duration = 0.8;
    view.percent = 0.75;
    
    [view show];
    
    [self.view addSubview:view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
