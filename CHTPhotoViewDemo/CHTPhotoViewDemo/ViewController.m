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

#if 0
    //image from net
    [photoView setImageWithURL:[NSURL URLWithString:@"https://pic1.zhimg.com/v2-183430a5f24967b5089d46109e028c54_r.jpg"] placeholderImage:nil];
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
