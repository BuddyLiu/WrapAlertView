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
    }
    return self;
}

- (instancetype)initC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][1];
    }
    return self;
}

- (instancetype)initVC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][2];
    }
    return self;
}

- (instancetype)initVI
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][3];
    }
    return self;
}

- (instancetype)initSSimple
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][4];
    }
    return self;
}

- (instancetype)initCS
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][5];
    }
    return self;
}

- (instancetype)initSVC
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][6];
    }
    return self;
}

- (instancetype)initSVI
{
    self = [super initWithFrame:CGRectZero];
    if (self)
    {
        self = [[NSBundle mainBundle] loadNibNamed:@"WrapCustomView" owner:self options:nil][7];
    }
    return self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [UIView animateWithDuration:0.5 animations:^{
        self.superview.frame = ({
            CGRect frame = self.superview.frame;
            frame.origin.y = ([UIScreen mainScreen].bounds.size.height - self.frame.size.height)/4.0;
            frame;
        });
    }];
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [UIView animateWithDuration:0.5 animations:^{
        self.superview.frame = ({
            CGRect frame = self.superview.frame;
            frame.origin.y = [UIScreen mainScreen].bounds.size.height - self.frame.size.height;
            frame;
        });
    }];
}

@end
