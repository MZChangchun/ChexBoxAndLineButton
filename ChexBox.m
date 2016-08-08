//
//  ChexBox.m
//  test
//
//  Created by Mr.Yang on 16/8/8.
//  Copyright © 2016年 MZ. All rights reserved.
//

#import "ChexBox.h"

@implementation ChexBox

-(instancetype)init {
    self = [super init];
    if (self) {
        self.choices = 0;
        [self addTarget:self action:@selector(changeChoiceStatus) forControlEvents:UIControlEventTouchUpInside];
        [self setImage:[UIImage imageNamed:@"chexButton_noSelect"] forState:UIControlStateNormal];
        self.bounds = CGRectMake(0, 0, 16, 16);

    }
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.choices = 0;
        [self addTarget:self action:@selector(changeChoiceStatus) forControlEvents:UIControlEventTouchUpInside];
        [self setImage:[UIImage imageNamed:@"chexButton_noSelect"] forState:UIControlStateNormal];
        self.bounds = CGRectMake(0, 0, 16, 16);
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.choices = 0;
        [self addTarget:self action:@selector(changeChoiceStatus) forControlEvents:UIControlEventTouchUpInside];
        [self setImage:[UIImage imageNamed:@"chexButton_noSelect"] forState:UIControlStateNormal];
        self.bounds = CGRectMake(0, 0, 16, 16);
    }
    return self;
}


-(void)setChoices:(BOOL)choices {
    if (_choices == choices) {
        return;
    }
    _choices = choices;
    if (choices) {
        [self setImage:[UIImage imageNamed:@"chexButton_Select"] forState:UIControlStateNormal];
        NSLog(@"我选择了");
    } else {
        [self setImage:[UIImage imageNamed:@"chexButton_noSelect"] forState:UIControlStateNormal];
        NSLog(@"我取消了选择");
    }
}

- (void)changeChoiceStatus {
    self.choices = !self.choices;
}

@end
