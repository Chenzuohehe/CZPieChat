# CZPieChat
####自用


     @property (strong, nonatomic) UIColor * strokeColor;
     @property (assign, nonatomic) CGFloat percent;
     @property (assign, nonatomic) CFTimeInterval duration;
     - (void)show;
 调用
     
     CZPieChatView * view = [[CZPieChatView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    view.strokeColor = [UIColor grayColor];
    view.duration = 0.8;
    view.percent = 0.75;
    
    [view show];
    
    [self.view addSubview:view];
     
![](http://ww1.sinaimg.cn/large/e91c45bdgw1f7e26so615j20pv1a074r.jpg)