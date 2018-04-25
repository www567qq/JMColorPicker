//
//  ColorShowView.m
//  DKVerticalColorPicker
//
//  Created by JSB-hejiamin on 2018/4/11.
//  Copyright © 2018年 Oak Snow Consulting. All rights reserved.
//

#import "ColorShowView.h"
@interface ColorShowView()

@property (strong,nonatomic)CAShapeLayer *backGroudlayer;



@end





@implementation ColorShowView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        _colorPopUpView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 24, 30)];
        [_colorPopUpView setHidden:NO];
        [_colorPopUpView setBackgroundColor:[UIColor whiteColor]];
        
        
        _backGroudlayer = [[CAShapeLayer alloc]init];
        
        CGFloat showWidth = _colorPopUpView.frame.size.width;
        CGFloat showHeight = _colorPopUpView.frame.size.height;
        
        
        CGPoint sPoints[7];
        sPoints[0] = CGPointMake(0, 0);
        sPoints[1] = CGPointMake(showWidth, 0);
        sPoints[2] = CGPointMake(0, showHeight * 3/4);
        sPoints[3] = CGPointMake(showWidth * 1/3, showHeight * 3/4);
        sPoints[4] = CGPointMake(showWidth/2, showHeight);
        sPoints[5] = CGPointMake(showWidth * 2/3, showHeight * 3/4);
        sPoints[6] = CGPointMake(showWidth, showHeight * 3/4);
        
        
        UIBezierPath *path = [[UIBezierPath alloc] init];
        [path moveToPoint:sPoints[0]];
        [path addLineToPoint:sPoints[1]];
        [path addLineToPoint:sPoints[6]];
        [path addLineToPoint:sPoints[5]];
        [path addLineToPoint:sPoints[4]];
        [path addLineToPoint:sPoints[3]];
        [path addLineToPoint:sPoints[2]];
        [path addLineToPoint:sPoints[0]];
        [path closePath];
        
        _backGroudlayer.path = path.CGPath;
        _colorPopUpView.layer.mask = _backGroudlayer;
        
        [_colorPopUpView.layer setCornerRadius:3.f];
        [_colorPopUpView.layer setMasksToBounds:YES];
        [self addSubview:_colorPopUpView];
        
        
    }
    return self;
}





@end
