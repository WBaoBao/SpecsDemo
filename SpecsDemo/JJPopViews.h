//
//  JJPopView.h
//  JiaJiaBang
//
//  Created by Admin on 2018/1/19.
//  Copyright © 2018年 Beijing Home Help technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface JJPopViews : NSObject



@property (nonatomic,strong) UIView  *cover;

@property (nonatomic,strong) UIView  *contentView;

@property(nonatomic,) CGRect   viewFrame;


+(instancetype)initWithContentView:(UIView *)contentView;


- (void)dissmiss;

@end
