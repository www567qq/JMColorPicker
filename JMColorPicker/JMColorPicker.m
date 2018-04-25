//
//  JMColorPicker.m
//  VideoEditDemo
//
//  Created by JSB-hejiamin on 2018/3/28.
//  Copyright © 2018年 JSB-hejiamin. All rights reserved.
//

#import "JMColorPicker.h"
#import "ColorShowView.h"

@interface JMColorPicker ()<UIGestureRecognizerDelegate>

@property (nonatomic) CGFloat currentSelectionX;



@end

@implementation JMColorPicker

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.currentSelectionX = 0.0;
    }
    return self;
}

// for when coming out of a nib
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.currentSelectionX = 0.0;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


-(UIColor *)getColor:(int)currentPoint{
    UIColor *color = nil;
    CGFloat frameWidthItem = self.frame.size.width/27;
    if (currentPoint < frameWidthItem) {
        color = [UIColor colorWithRed:119.0f/255.0f green:0.0f/255.0f blue:2.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem && currentPoint < frameWidthItem *2){
        color = [UIColor colorWithRed:65.0f/255.0f green:65.0f/255.0f blue:65.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*2 && currentPoint < frameWidthItem *3){
        color = [UIColor colorWithRed:186.0f/255.0f green:186.0f/255.0f blue:186.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*3 && currentPoint < frameWidthItem *4){
        color = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*4 && currentPoint < frameWidthItem *5){
        color = [UIColor colorWithRed:119.0f/255.0f green:0.0f/255.0f blue:2.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*5 && currentPoint < frameWidthItem *6){
        color = [UIColor colorWithRed:195.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*6 && currentPoint < frameWidthItem *7){
        color = [UIColor colorWithRed:255.0f/255.0f green:174.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*7 && currentPoint < frameWidthItem *8){
        color = [UIColor colorWithRed:254.0f/255.0f green:249.0f/255.0f blue:84.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*8 && currentPoint < frameWidthItem *9){
        color = [UIColor colorWithRed:113.0f/255.0f green:211.0f/255.0f blue:57.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*9 && currentPoint < frameWidthItem *10){
        color = [UIColor colorWithRed:0.0f/255.0f green:188.0f/255.0f blue:48.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*10 && currentPoint < frameWidthItem *11){
        color = [UIColor colorWithRed:0.0f/255.0f green:195.0f/255.0f blue:148.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*11 && currentPoint < frameWidthItem *12){
        color = [UIColor colorWithRed:0.0f/255.0f green:201.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*12 && currentPoint < frameWidthItem *13){
        color = [UIColor colorWithRed:31.0f/255.0f green:93.0f/255.0f blue:206.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*13 && currentPoint < frameWidthItem *14){
        color = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*14 && currentPoint < frameWidthItem *15){
        color = [UIColor colorWithRed:96.0f/255.0f green:0.0f/255.0f blue:154.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*15 && currentPoint < frameWidthItem *16){
        color = [UIColor colorWithRed:169.0f/255.0f green:0.0f/255.0f blue:244.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*16 && currentPoint < frameWidthItem *17){
        color = [UIColor colorWithRed:34.0f/255.0f green:112.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*17 && currentPoint < frameWidthItem *18){
        color = [UIColor colorWithRed:0.0f/255.0f green:224.0f/255.0f blue:221.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*18 && currentPoint < frameWidthItem *19){
        color = [UIColor colorWithRed:0.0f/255.0f green:188.0f/255.0f blue:97.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*19 && currentPoint < frameWidthItem *20){
        color = [UIColor colorWithRed:0.0f/255.0f green:181.0f/255.0f blue:16.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*20 && currentPoint < frameWidthItem *21){
        color = [UIColor colorWithRed:122.0f/255.0f green:240.0f/255.0f blue:72.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*21 && currentPoint < frameWidthItem *22){
        color = [UIColor colorWithRed:255.0f/255.0f green:213.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*22 && currentPoint < frameWidthItem *23){
        color = [UIColor colorWithRed:255.0f/255.0f green:245.0f/255.0f blue:153.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*23 && currentPoint < frameWidthItem *24){
        color = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*24 && currentPoint < frameWidthItem *25){
        color = [UIColor colorWithRed:186.0f/255.0f green:186.0f/255.0f blue:186.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*25 && currentPoint < frameWidthItem *26){
        color = [UIColor colorWithRed:65.0f/255.0f green:65.0f/255.0f blue:65.0f/255.0f alpha:1.0f];
        
    }else if (currentPoint >= frameWidthItem*26 && currentPoint < frameWidthItem *27){
        color = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }else{
        color = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
        
    }
    return color;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    for (int x = 0; x < self.frame.size.width; x++) {
        UIColor *color = [self getColor:x];
        [color set];
        
        CGRect temp = CGRectMake(x,0, 1.0,self.frame.size.height);
        UIRectFill(temp);
    }
}

/*!
 Changes the selected color, updates the UI, and notifies the delegate.
 */
- (void)setSelectedColor:(UIColor *)selectedColor
{
    if (selectedColor != _selectedColor)
    {
        CGFloat hue = 0.0, temp = 0.0;
        if ([selectedColor getHue:&hue saturation:&temp brightness:&temp alpha:&temp])
        {
            self.currentSelectionX = floorf(hue * self.frame.size.width);
            [self setNeedsDisplay];
        }
        _selectedColor = selectedColor;
        if([self.delegate respondsToSelector:@selector(colorPicked: touColorLocation:)])
        {
            [self.delegate colorPicked:_selectedColor touColorLocation:self.currentSelectionX];
        }
    }
}

#pragma mark - Touch Events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //update color
    self.currentSelectionX = [((UITouch *)[touches anyObject]) locationInView:self].x;
    
    _selectedColor = [self getColor:self.currentSelectionX];
    
    if (self.currentSelectionX >= -12 && self.currentSelectionX <= self.bounds.size.width) {
        if([self.delegate respondsToSelector:@selector(colorPicked: touColorLocation:)])
        {
            [self.delegate colorPicked:_selectedColor touColorLocation:self.currentSelectionX];
        }
    }
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //update color
    self.currentSelectionX = [((UITouch *)[touches anyObject]) locationInView:self].x;
    _selectedColor = [self getColor:self.currentSelectionX];
    
    if (self.currentSelectionX >= -12 && self.currentSelectionX <= self.bounds.size.width) {
        if([self.delegate respondsToSelector:@selector(colorPicked: touColorLocation:)])
        {
            [self.delegate colorPicked:_selectedColor touColorLocation:self.currentSelectionX];
        }
    }
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //update color
    self.currentSelectionX = [((UITouch *)[touches anyObject]) locationInView:self].x;

    _selectedColor = [self getColor:self.currentSelectionX];
    
    if([self.delegate respondsToSelector:@selector(colorPicked: touColorLocation:)])
    {
        [self.delegate colorPickedTouchEnd:_selectedColor touColorLocation:self.currentSelectionX];
    }
    
    
    
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([self.delegate respondsToSelector:@selector(colorPickedTouchEnd:touColorLocation:)]) {
        [self.delegate colorPickedTouchEnd:_selectedColor touColorLocation:self.currentSelectionX];
    }
}
@end

