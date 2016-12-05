//
//  GradientLabel.h
//  iphoneLive
//
//  Created by 郭常青 on 2016/12/2.
//  Copyright © 2016年 cat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GradientLabel : UIView

@property (nonatomic, strong) NSArray * colors;//颜色数组

@property (nonatomic, strong) UIFont *font;//字体

@property (nonatomic, copy) NSString *text;//文字

@property (nonatomic, assign) NSTextAlignment textAlignment;//对齐方式

@property (nonatomic, assign) CGPoint startPoint;//起始点（0.0~1.0）

@property (nonatomic, assign) CGPoint endPoint;//结束点（0.0~1.0）

- (void) setGradientLabel;

@end
