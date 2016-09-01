//
//  CZPieChatView.h
//  CZPieChat
//
//  Created by ChenZuo on 16/9/1.
//  Copyright © 2016年 ChenZuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZPieChatView : UIView

/**
 *  饼状图颜色
 */
@property (strong, nonatomic) UIColor * strokeColor;
/**
 *  所占百分比 0～1
 */
@property (assign, nonatomic) CGFloat percent;
/**
 *  动画时间
 */
@property (assign, nonatomic) CFTimeInterval duration;

/**
 *  展示动画
 */
- (void)show;

@end
