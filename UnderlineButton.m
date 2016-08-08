//
//  UnderlineButton.m
//  test
//
//  Created by Mr.Yang on 16/8/8.
//  Copyright © 2016年 MZ. All rights reserved.
//

#import "UnderlineButton.h"

@implementation UnderlineButton

-(void)setUnderlineColor:(UIColor *)underlineColor {
    if (_underlineColor == underlineColor) {
        return;
    }
    _underlineColor = underlineColor;
    [self setNeedsDisplay];
}

- (void) drawRect:(CGRect)rect {
    CGRect textRect = self.titleLabel.frame;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGFloat descender = self.titleLabel.font.descender;
    if([self.underlineColor isKindOfClass:[UIColor class]]){
        CGContextSetStrokeColorWithColor(contextRef, self.underlineColor.CGColor);
    }
    
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender+1);
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender+1);
    
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}

@end
