//
//  JMColorPicker.h
//  VideoEditDemo
//
//  Created by JSB-hejiamin on 2018/3/28.
//  Copyright © 2018年 JSB-hejiamin. All rights reserved.
//
#import <UIKit/UIKit.h>


@protocol JMColorPickerDelegate <NSObject>
@optional

-(void)colorPickedTouchEnd:(UIColor *)color touColorLocation:(CGFloat)location;

-(void)colorPicked:(UIColor *)color touColorLocation:(CGFloat)location;


@end

IB_DESIGNABLE

@interface JMColorPicker : UIView

@property (nonatomic, weak) IBOutlet id<JMColorPickerDelegate> delegate;  //set after inited
@property (nonatomic) IBInspectable UIColor *selectedColor;  //setting this will update the UI & notify the delegate


@end

