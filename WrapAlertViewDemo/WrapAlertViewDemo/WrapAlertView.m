//
//  WrapAlertView.m
//  WrapAlertView
//
//  Created by Paul on 19/03/2018.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "WrapAlertView.h"

@interface WrapAlertView()

@property (nonatomic, assign) BOOL canHideByTapBlack; //是否可以点击空白处退出alertView
@property (nonatomic, assign) WrapAlertViewType viewType; //视图类型

@end

@implementation WrapAlertView

static WrapAlertView *_instance;

+ (WrapAlertView *) shareAlertView
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [[WrapAlertView alloc] init];
            _instance.viewType = WrapAlertViewTypeAlert;
        }
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.WR_window = [UIApplication sharedApplication].keyWindow;
        
        self.WR_blackView = [[UIView alloc] initWithFrame:self.WR_window.bounds];
        self.WR_blackView.userInteractionEnabled = YES;
        self.WR_blackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
        
        UITapGestureRecognizer *tapblackView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBlackView:)];
        tapblackView.delegate = self;
        [self.WR_blackView addGestureRecognizer:tapblackView];
        [self.WR_window addSubview:self.WR_blackView];

        self.WR_backView = [[UIView alloc] initWithFrame:CGRectMake(self.WR_window.frame.size.width/2.0, self.WR_window.frame.size.height/2.0, 0, 0)];
        self.WR_backView.backgroundColor = [UIColor whiteColor];
        self.WR_backView.clipsToBounds = YES;
        self.WR_backView.userInteractionEnabled = YES;
        self.WR_backView.layer.cornerRadius = 8;
        [self.WR_window addSubview:self.WR_backView];
                
        self.canHideByTapBlack = NO;
        self.WR_isVisible = NO;
    }
    return self;
}

-(void)layoutAlertSubviews
{
    NSArray *viewArr = self.WR_backView.subviews;
    CGFloat lastBottom = 0;
    CGFloat lastWidth = 0;
    for (UIView *view in viewArr)
    {
        if((view.frame.size.height + view.frame.origin.y) > lastBottom)
        {
            lastBottom = (view.frame.size.height + view.frame.origin.y);
        }
        else
        {
            continue;
        }
        if(view.frame.size.width > lastWidth)
        {
            lastWidth = view.frame.size.width;
        }
        else
        {
            continue;
        }
    }
    
    if(lastBottom > (self.WR_window.frame.size.height - 20))
    {
        lastBottom = self.WR_window.frame.size.height - 20;
    }
    
    CGFloat top = 0;
    if(self.viewType == WrapAlertViewTypeAlert)
    {
        top = (self.WR_window.frame.size.height - lastBottom)/2.0;
    }
    else if(self.viewType == WrapAlertViewTypeSheet)
    {
        top = self.WR_window.frame.size.height - lastBottom - 20;
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        self.WR_backView.frame = ({
            CGRect frame = self.WR_backView.frame;
            frame.origin.x = (self.WR_window.frame.size.width - lastWidth)/2.0;
            frame.origin.y = top;
            frame.size.width = lastWidth;
            frame.size.height = lastBottom;
            frame;
        });
    });
}

-(void)showSheetViewBlock:(CreateWrapAlertViewBlock)block
{
    [self showType:(WrapAlertViewTypeSheet) block:block];
}

-(void)showAlertViewBlock:(CreateWrapAlertViewBlock)block
{
    [self showType:(WrapAlertViewTypeAlert) block:block];
}

-(void)showType:(WrapAlertViewType)type block:(CreateWrapAlertViewBlock)block
{
    self.viewType = type;
    [self show];
    block(self.WR_backView);
    [self layoutAlertSubviews];
}

-(void)show
{
    if(!self.WR_isVisible)
    {
        self.WR_blackView.alpha = 1;
        self.WR_backView.alpha = 1;
    }
    else
    {
        //nothing to do
    }
}

-(void)createMessageCodeView
{
    self.WR_isVisible = YES;
    [self.WR_window addSubview:self.WR_backView];
}

-(void)canHideByTapBlack:(BOOL)canHideByTapBlack
{
    _canHideByTapBlack = canHideByTapBlack;
}

-(void)tapBlackView:(UITapGestureRecognizer *)tap
{
    if(self.canHideByTapBlack)
    {
        [self hide];
    }
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder)to:nil from:nil forEvent:nil];
}

-(void)hide
{
    self.WR_isVisible = NO;
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.WR_blackView.alpha = 0;
        weakSelf.WR_backView.alpha = 0;
    }];
    
    for (int i = 0; i < self.WR_backView.subviews.count; i++)
    {
        UIView *view = self.WR_backView.subviews[i];
        [view removeFromSuperview];
    }
}

@end
