//
//  WrapAlertView.h
//  WrapAlertView
//
//  Created by Paul on 19/03/2018.
//  Copyright © 2018 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, WrapAlertViewType) {
    WrapAlertViewTypeAlert,
    WrapAlertViewTypeSheet,
};

typedef void(^CreateWrapAlertViewBlock)(UIView *alertView);

@interface WrapAlertView : UIView<UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIWindow *WR_window; //windows层
@property (nonatomic, strong) UIView *WR_blackView; //底层透明黑色视图层
@property (nonatomic, strong) UIView *WR_backView; //可操作视图
@property (nonatomic, assign) BOOL WR_isVisible; //是否已经显示

+(WrapAlertView *)shareAlertView;

/**
 显示视图，block中实现自定制视图，指定类型

 @param type 类型WrapAlertViewType
 @param block 调用处实现的代码块
 */
-(void)showType:(WrapAlertViewType)type block:(CreateWrapAlertViewBlock)block;

/**
 显示视图，block中实现自定制视图 Alert

 @param block 调用处实现的代码块
 */
-(void)showSheetViewBlock:(CreateWrapAlertViewBlock)block;

/**
 显示视图，block中实现自定制视图 Sheet
 
 @param block 调用处实现的代码块
 */
-(void)showAlertViewBlock:(CreateWrapAlertViewBlock)block;

/**
 隐藏视图
 */
-(void)hide;

/**
 是否允许点击透明黑色背景视图隐藏界面

 @param canHideByTapBlack YES-允许， NO-不允许，默认YES
 */
-(void)canHideByTapBlack:(BOOL)canHideByTapBlack;

@end
