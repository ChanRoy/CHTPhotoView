# CHTPhotoView
用于展示照片的View，支持双击放大缩小，双指缩放。

![](https://github.com/ChanRoy/CHTPhotoView/blob/master/CHTPhotoView.gif)

## 简介
*CHTPhotoView 继承自 UIScrollView*

*用于展示照片的View，支持双击放大缩小，双指缩放*

*具体效果如上图*

## 使用

### 初始化

```
- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;
```

### 属性

```
//展示的图片
@property (nonatomic, strong) UIImage *image;
```
### 接口
依赖于第三方库SDWebImage，使用时需要引入SDWebImage。

```
//set image from net
- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholderImage;
```

### 代理

```
@property (nonatomic, weak) id<CHTPhotoViewDelegate> photoViewDelegate;
```

photoViewDelegate 遵循以下协议,单击photoView会触发以下协议方法。

```
@protocol CHTPhotoViewDelegate <NSObject>

- (void)photoViewDidOnceTap:(CHTPhotoView *)photoView;

@end
```
### 使用Demo

```
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
```

```
#pragma mark - CHTPhotoViewDelegate
- (void)photoViewDidOnceTap:(CHTPhotoView *)photoView{
    
    NSLog(@"****************");
}
```

具体可参考仓库中的Demo。
