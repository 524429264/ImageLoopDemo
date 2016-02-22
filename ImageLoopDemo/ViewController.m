//
//  ViewController.m
//  ImageLoopDemo
//
//  Created by NationSky on 16/2/22.
//  Copyright © 2016年 nsky. All rights reserved.
//

#import "ViewController.h"
#import "HADirect.h"
@interface ViewController ()
@property(nonatomic,strong)NSArray *images;
@end
#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.images = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"];

    
    [self test1];
    
    [self test2];

    
}


- (void)test1
{
    HADirect *direct = [HADirect direcWithtFrame:CGRectMake(0, 20, SCREENWIDTH, 250) ImageArr:self.images AndImageClickBlock:nil];
    [self.view addSubview:direct];
    [direct beginTimer];
}

- (void)test2
{
    HADirect *direct = [HADirect direcWithtFrame:CGRectMake(0, 300, SCREENWIDTH, 250) ImageArr:self.images AndImageClickBlock:^(NSInteger index) {
        NSLog(@"当前是第%ld页图片",index);
    }];
    [self.view addSubview:direct];
    [direct beginTimer];
}



@end
