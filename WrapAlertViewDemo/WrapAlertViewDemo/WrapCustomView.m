//
//  WrapCustomView.m
//  WrapAlertView
//
//  Created by 青弧 on 27/03/2018.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "WrapCustomView.h"

@interface WrapCustomView()<UITextFieldDelegate>

@end

@implementation WrapCustomView

- (instancetype)initSimple
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][0];
        self.viewType = WrapCustomViewTypeAlert;
    }
    return self;
}

- (instancetype)initC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][1];
        self.viewType = WrapCustomViewTypeAlert;
    }
    return self;
}

- (instancetype)initVC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][2];
        self.viewType = WrapCustomViewTypeAlert;
    }
    return self;
}

- (instancetype)initVI
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][3];
        self.viewType = WrapCustomViewTypeAlert;
    }
    return self;
}

- (instancetype)initSSimple
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][4];
        self.viewType = WrapCustomViewTypeSheet;
    }
    return self;
}

- (instancetype)initCS
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][5];
        self.viewType = WrapCustomViewTypeSheet;
    }
    return self;
}

- (instancetype)initSVC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][6];
        self.viewType = WrapCustomViewTypeSheet;
    }
    return self;
}

- (instancetype)initSVI
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][7];
        self.viewType = WrapCustomViewTypeSheet;
    }
    return self;
}

- (instancetype)initCurtain
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][8];
        self.viewType = WrapCustomViewTypeCurtain;
    }
    return self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [UIView animateWithDuration:0.5 animations:^{
        self.superview.frame = ({
            CGRect frame = self.superview.frame;
            frame.origin.y = ([UIScreen mainScreen].bounds.size.height - self.superview.frame.size.height)/4.0;
            frame;
        });
    }];
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    CGFloat top = 0;
    if(self.viewType == WrapCustomViewTypeAlert)
    {
        top = ([UIScreen mainScreen].bounds.size.height - self.superview.frame.size.height)/2.0;
    }
    else
    {
        top = [UIScreen mainScreen].bounds.size.height - self.superview.frame.size.height - 20;
    }
    [UIView animateWithDuration:0.5 animations:^{
        self.superview.frame = ({
            CGRect frame = self.superview.frame;
            frame.origin.y = top;
            frame;
        });
    }];
}

@end
