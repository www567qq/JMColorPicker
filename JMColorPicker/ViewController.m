//
//  ViewController.m
//  JMColorPicker
//
//  Created by JSB-hejiamin on 2018/4/20.
//  Copyright © 2018年 JSB-hejiamin. All rights reserved.
//

#import "ViewController.h"
#import "JMColorPicker.h"
#import "ColorShowView.h"

@interface ViewController ()<JMColorPickerDelegate>

@property (strong,nonatomic)JMColorPicker *backGroudColorPicker;
@property (strong,nonatomic)ColorShowView *colorShowView;

@end

@implementation ViewController

-(JMColorPicker *)backGroudColorPicker{
    if (!_backGroudColorPicker) {
        _backGroudColorPicker = [[JMColorPicker alloc]init];
    }
    return _backGroudColorPicker;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self.backGroudColorPicker setFrame:CGRectMake(self.view.frame.size.width * 0.05, self.view.frame.size.height/2/2  - 15 , self.view.frame.size.width * 0.9, 30)];
    [self.view addSubview:self.backGroudColorPicker];
    [self.backGroudColorPicker setDelegate:self];
    
    
    _colorShowView = [[ColorShowView alloc]initWithFrame:CGRectMake(_backGroudColorPicker.frame.origin.x - 12, _backGroudColorPicker.frame.origin.y-30-1, _backGroudColorPicker.frame.size.width +  2 * 12, 30)];
    [_colorShowView setHidden:YES];
    [_colorShowView setBackIndicateColor:[UIColor clearColor]];
    
    [self.view addSubview:_colorShowView];
}

-(void)colorPicked:(UIColor *)color touColorLocation:(CGFloat)location{
    [self.colorShowView setHidden:NO];
    [self.colorShowView.colorPopUpView setBackgroundColor:color];
    if (location <= 0 || location >= self.colorShowView.bounds.size.width) {
        
    }else{
        [self.colorShowView.colorPopUpView setFrame:CGRectMake(location, 0, 24, 30)];
        
    }
    
}

-(void)colorPickedTouchEnd:(UIColor *)color touColorLocation:(CGFloat)location{
    [self.colorShowView.colorPopUpView setBackgroundColor:color];
    [self.colorShowView setHidden:YES];
    if (location <= 0 || location >= self.colorShowView.bounds.size.width) {
        
    }else{
        [self.colorShowView.colorPopUpView setFrame:CGRectMake(location, 0, 24, 30)];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
