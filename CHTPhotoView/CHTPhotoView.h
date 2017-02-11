//
//  CHTPhotoView.h
//  CHTPhotoViewDemo
//
//  Created by cht on 17/2/7.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CHTPhotoView;

@protocol CHTPhotoViewDelegate <NSObject>

- (void)photoViewDidOnceTap:(CHTPhotoView *)photoView;

@end

@interface CHTPhotoView : UIScrollView

@property (nonatomic, weak) id<CHTPhotoViewDelegate> photoViewDelegate;

@property (nonatomic, strong) UIImage *image;

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholderImage;


@end
