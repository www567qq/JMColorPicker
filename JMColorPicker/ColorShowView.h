//
//  ColorShowView.h
//  DKVerticalColorPicker
//
//  Created by JSB-hejiamin on 2018/4/11.
//  Copyright © 2018年 Oak Snow Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorShowView : UIView
-(instancetype)initWithFrame:(CGRect)frame;

@property (strong, nonatomic) UIView *colorPopUpView;

@property (strong, nonatomic) UIColor *backIndicateColor;


@end
