//
//  CZPieChatView.m
//  CZPieChat
//
//  Created by ChenZuo on 16/9/1.
//  Copyright © 2016年 ChenZuo. All rights reserved.
//

#import "CZPieChatView.h"

@interface CZPieChatView()
{
    CAShapeLayer *checkShapeLayer;
}
@end

@implementation CZPieChatView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) {
        self = nil;
    }
    
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (!self) {
        self = nil;
    }
    
    return self;
}


- (void)addLayer
{
    CGPoint centerPoint = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    CGFloat radius = self.frame.size.width / 2;
    UIBezierPath *bgPath = [UIBezierPath bezierPathWithArcCenter:centerPoint radius:radius/2 startAngle:-M_PI_2 endAngle:M_PI_2 * 3 clockwise:YES];
    
    checkShapeLayer = [CAShapeLayer layer];
    checkShapeLayer.fillColor   = [UIColor clearColor].CGColor;
    checkShapeLayer.strokeColor = self.strokeColor.CGColor;
    checkShapeLayer.strokeStart = 0.0f;
    checkShapeLayer.strokeEnd   = self.percent;
    checkShapeLayer.zPosition   = 1;
    checkShapeLayer.lineWidth   = radius;
    checkShapeLayer.path        = bgPath.CGPath;
    
    [self.layer addSublayer:checkShapeLayer];
}
 
- (void)show
{
    [self addLayer];
    //画图动画
    self.hidden = NO;
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration  = self.duration;
    animation.fromValue = @0.0f;
    animation.toValue   = [NSNumber numberWithFloat:self.percent];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.removedOnCompletion = YES;
    [checkShapeLayer addAnimation:animation forKey:@"circleAnimation"];
}

@end
