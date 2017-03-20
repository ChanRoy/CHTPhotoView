//
//  ViewController.m
//  CHTPhotoViewDemo
//
//  Created by cht on 17/2/7.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import "ViewController.h"
#import "CHTPhotoView.h"

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<CHTPhotoViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CHTPhotoView *photoView = [[CHTPhotoView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
    photoView.photoViewDelegate = self;

#if 1
    //image from net
    [photoView setImageWithURL:[NSURL URLWithString:@"http://image.xinmin.cn/xmwb/2015/12/NEM1_20151225_C032136180_A39131.jpg"] placeholderImage:[UIImage imageNamed:@"pd.jpg"]];
#else
    //image from local
    photoView.image = [UIImage imageNamed:@"dahuaxiyou.jpg"];
    
#endif
    [self.view addSubview:photoView];
    
    
}

#pragma mark - CHTPhotoViewDelegate
- (void)photoViewDidOnceTap:(CHTPhotoView *)photoView{
    
    NSLog(@"****************");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
