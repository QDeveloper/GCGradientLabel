//
//  ViewController.m
//  GCGradientLabel
//
//  Created by 郭常青 on 2018/6/4.
//  Copyright © 2018年 郭常青. All rights reserved.
//

#import "ViewController.h"
#import "GradientLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    GradientLabel *label = [[GradientLabel alloc] initWithFrame:CGRectMake(100, 200, 200, 20)];
    [self.view addSubview:label];
    
    label.text = @"GradientLabel";
    [label setGradientLabelColors:@[(__bridge id)UIColor.redColor.CGColor, (__bridge id)UIColor.blackColor.CGColor]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
