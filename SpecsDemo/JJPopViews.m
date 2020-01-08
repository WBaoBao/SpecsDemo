//
//  JJPopView.m
//  JiaJiaBang
//
//  Created by Admin on 2018/1/19.
//  Copyright © 2018年 Beijing Home Help technology Co., Ltd. All rights reserved.
//

#import "JJPopViews.h"


/**
 *  1.屏幕尺寸
 */
#define ScreenWidth  CGRectGetWidth([UIScreen mainScreen].bounds)
#define ScreenHeight CGRectGetHeight([UIScreen mainScreen].bounds)

@interface JJPopViews()<UIGestureRecognizerDelegate>

@end

@implementation JJPopViews

+(instancetype)initWithContentView:(UIView *)contentView{
    static JJPopViews * popView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        popView = [[self alloc] init];
        
    });
    [popView CreatContentView:contentView];
    return popView;
}


- (void)CreatContentView:(UIView *)view{
    _contentView = view;
     _contentView.hidden = NO;
//    UIView * viewsss = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 500)];
//    viewsss.backgroundColor = [UIColor redColor];
    UIWindow *windows = [UIApplication sharedApplication].keyWindow;
    [windows addSubview:self.cover];
    __weak typeof (self) weakSelf = self;
    [UIView animateWithDuration:0.05 delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^{
        weakSelf.cover.centerY = ScreenHeight/2.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.2 animations:^{
            weakSelf.cover.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
        }];
    }];
}


- (UIView *)cover{
    
    if (!_cover) {
        _cover = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
        [_cover addSubview:_contentView];
        self.viewFrame = _contentView.frame;
       
//        UIView * tapView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight - _contentView.frame.size.height)];
//        [_cover addSubview:tapView];

        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapCover:)];
        [_cover addGestureRecognizer:tap];
        tap.delegate = self;
    }
    return _cover;
}


- (void)tapCover:(UITapGestureRecognizer *)tap{
    [self dissmiss];
}

- (void)dissmiss{
    __weak typeof (self) weakSelf = self;
    [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^{
        _contentView.frame = CGRectMake(0, ScreenHeight, ScreenWidth, weakSelf.contentView.frame.size.height);
        weakSelf.cover.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    } completion:^(BOOL finished) {
        _contentView.hidden = YES;
        _contentView.frame = self.viewFrame;
        [_contentView removeFromSuperview];
        _contentView = nil;
        [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^{
            weakSelf.cover.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
        } completion:^(BOOL finished) {
        
            weakSelf.cover.hidden = YES;
            [weakSelf.cover removeFromSuperview];
            weakSelf.cover = nil;
    }];

    }];
}


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    
    if ( [gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]] ) {
        if ([touch.view isDescendantOfView:_contentView]) {
            return NO;
        }
    }
    return YES;
}

@end
