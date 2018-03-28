//
//  WrapCustomView.h
//  WrapAlertView
//
//  Created by 青弧 on 27/03/2018.
//  Copyright © 2018 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, WrapCustomViewType) {
    WrapCustomViewTypeAlert,
    WrapCustomViewTypeSheet,
};

@interface WrapCustomView : UIView

@property (nonatomic, assign) WrapCustomViewType viewType;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;
@property (strong, nonatomic) IBOutlet UIButton *cancelBtn;
@property (strong, nonatomic) IBOutlet UIButton *sureBtn;

@property (strong, nonatomic) IBOutlet UILabel *vcTitleLabel;
@property (strong, nonatomic) IBOutlet UIButton *vcCodeBtn;
@property (strong, nonatomic) IBOutlet UITextField *vcCodeInputTextField;
@property (strong, nonatomic) IBOutlet UIButton *vcCancelBtn;
@property (strong, nonatomic) IBOutlet UIButton *vcSureBtn;

@property (strong, nonatomic) IBOutlet UILabel *viTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *viCodeImageView;
@property (strong, nonatomic) IBOutlet UITextField *viCodeInputTextField;
@property (strong, nonatomic) IBOutlet UIButton *viCancelBtn;
@property (strong, nonatomic) IBOutlet UIButton *viSureBtn;

@property (strong, nonatomic) IBOutlet UILabel *sTitleLabel;
@property (strong, nonatomic) IBOutlet UIScrollView *sMainScrollView;
@property (strong, nonatomic) IBOutlet UILabel *sContentLabel;
@property (strong, nonatomic) IBOutlet UIButton *sSureBtn;
@property (strong, nonatomic) IBOutlet UIButton *sCancelBtn;

@property (strong, nonatomic) IBOutlet UILabel *svcTitleLabel;
@property (strong, nonatomic) IBOutlet UIButton *svcCodeBtn;
@property (strong, nonatomic) IBOutlet UITextField *svcCodeInputTextField;
@property (strong, nonatomic) IBOutlet UIButton *svcSureBtn;
@property (strong, nonatomic) IBOutlet UIButton *svcCancelBtn;

@property (strong, nonatomic) IBOutlet UILabel *sviTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *sviCodeImageView;
@property (strong, nonatomic) IBOutlet UITextField *sviCodeInputTextField;
@property (strong, nonatomic) IBOutlet UIButton *sviSureBtn;
@property (strong, nonatomic) IBOutlet UIButton *sviCancelBtn;

@property (strong, nonatomic) IBOutlet UILabel *cContentLabel;
@property (strong, nonatomic) IBOutlet UIScrollView *cMainScrollView;
@property (strong, nonatomic) IBOutlet UIButton *cSureBtn;
@property (strong, nonatomic) IBOutlet UIButton *cCancelBtn;

@property (strong, nonatomic) IBOutlet UILabel *csContentLabel;
@property (strong, nonatomic) IBOutlet UIScrollView *csMainScrollView;
@property (strong, nonatomic) IBOutlet UIButton *csSureBtn;
@property (strong, nonatomic) IBOutlet UIButton *csCancelBtn;

/**
 初始化简单视图，仅包含titleLabel，mainScrollView，contentLabel，cancelBtn，sureBtn

 @return 返回视图本身 Alert
 */
- (instancetype)initSimple;

/**
 初始化仅内容视图，仅包含cContentLabel，cMainScrollView，cCancelBtn，cSureBtn
 
 @return 返回视图本身 Alert
 */
- (instancetype)initC;

/**
 初始化短信验证码视图，仅包含vcTitleLabel，vcCodeBtn，vcCodeInputTextField，vcCancelBtn，vcSureBtn

 @return 返回视图本身 Alert
 */
- (instancetype)initVC;

/**
 初始化图形验证码视图，仅包含viTitleLabel，viCodeImageView，viCodeInputTextField，viCancelBtn，viSureBtn
 
 @return 返回视图本身 Alert
 */
- (instancetype)initVI;

/**
 初始化简单视图，仅包含sTitleLabel，sMainScrollView，sContentLabel，sCancelBtn，sSureBtn
 
 @return 返回视图本身 Sheet
 */
- (instancetype)initSSimple;

/**
 初始化仅内容视图，仅包含csContentLabel，csMainScrollView，csCancelBtn，csSureBtn
 
 @return 返回视图本身 Sheet
 */
- (instancetype)initCS;

/**
 初始化短信验证码视图，仅包含svcTitleLabel，svcCodeBtn，svcCodeInputTextField，svcCancelBtn，svcSureBtn
 
 @return 返回视图本身 Sheet
 */
- (instancetype)initSVC;

/**
 初始化图形验证码视图，仅包含sviTitleLabel，sviCodeImageView，sviCodeInputTextField，sviCancelBtn，sviSureBtn
 
 @return 返回视图本身 Sheet
 */
- (instancetype)initSVI;

@end
