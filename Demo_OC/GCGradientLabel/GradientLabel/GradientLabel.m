//
//  GradientLabel.m
//  iphoneLive
//
//  Created by 郭常青 on 2016/12/2.
//  Copyright © 2016年 cat. All rights reserved.
//

#import "GradientLabel.h"

@interface GradientLabel ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@property (nonatomic, strong) NSArray * colors;//颜色数组

@end

@implementation GradientLabel

- (CAGradientLayer *)gradientLayer {
    if (!_gradientLayer) {
        _gradientLayer = [CAGradientLayer layer];
        _gradientLayer.startPoint = CGPointMake(0.0,1.0);
        _gradientLayer.endPoint = CGPointMake(1.0, 1.0);
        _gradientLayer.frame = self.label.frame;
        _gradientLayer.colors = self.colors?:@[[UIColor whiteColor], [UIColor blackColor]];
    }
    return _gradientLayer;
}


- (void) setGradientLabelColors: (NSArray *)colors {
    
    self.colors = colors;
    
    if (self.label == nil) {
        self.label = [[UILabel alloc] init];
        [self addSubview:self.label];
    }
    
    self.label.text = self.text;
    [self.label setFont:self.font?:[UIFont systemFontOfSize:13]];
    [self.label setTextAlignment:self.textAlignment?:NSTextAlignmentLeft];
    
    // 清理text
    self.text = @"";
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    [self.label setFrame:self.bounds];
    
    // 这里必须重新addSublayer才会更新
    if (self.gradientLayer.sublayers != nil) {
        [self.gradientLayer removeFromSuperlayer];
    }
    [self.layer addSublayer:self.gradientLayer];
    self.gradientLayer.mask = self.label.layer;
}

@end
