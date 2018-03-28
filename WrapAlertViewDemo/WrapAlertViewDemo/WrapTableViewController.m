//
//  WrapTableViewController.m
//  WrapCustomAlert
//
//  Created by 青弧 on 26/03/2018.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "WrapTableViewController.h"
#import "WrapAlertView.h"
#import "WrapCustomView.h"

@interface WrapTableViewController ()

@end

@implementation WrapTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
    {
        switch (indexPath.row)
        {
            case 0:
            {
                [[WrapAlertView shareAlertView] showAlertViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initSimple];
                    view.titleLabel.text = @"UIAlertControllerStyleAlert";
                    view.contentLabel.text = @"asdasdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ah\ndkahlksjhldakjshdlkjhksdjfhaksjd\nhfkahdkfhsddasdadasdasdjka\nhdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsd000";
                    [view.cancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.sureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 1:
            {
                [[WrapAlertView shareAlertView] showAlertViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initC];
                    view.cContentLabel.text = @"asdasdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ah\ndkahlksjhldakjshdlkjhksdjfhaksjd\nhfkahdkfhsddasdadasdasdjka\nhdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsd000";
                    [view.cCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.cSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 2:
            {
                [[WrapAlertView shareAlertView] showAlertViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initVC];
                    view.vcTitleLabel.text = @"Alert Verification code View";
                    [view.vcCodeBtn addTarget:self action:@selector(codeBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.vcCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.vcSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 3:
            {
                [[WrapAlertView shareAlertView] showAlertViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initVI];
                    view.viTitleLabel.text = @"Alert Verification Image View";
                    [view.viCodeImageView setImage:[UIImage imageNamed:@"right"]];
                    [view.viCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.viSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            default:
                break;
        }
    }
    else if(indexPath.section == 1)
    {
        switch (indexPath.row)
        {
            case 0:
            {
                [[WrapAlertView shareAlertView] showSheetViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initSSimple];
                    view.sTitleLabel.text = @"UIAlertControllerStyleActionSheet";
                    view.sContentLabel.text = @"asdasdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ah\ndkahlksjhldakjshdlkjhksdjfhaksjd\nhfkahdkfhsddasdadasdasdjka\nhdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsd000";
                    [view.sCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.sSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 1:
            {
                [[WrapAlertView shareAlertView] showSheetViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initCS];
                    view.csContentLabel.text = @"asdasdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ahsdadasdasdjkahdkahlksjhldakjshdlkjhks\n123djfhaksjdhfkahdkf\nhsddasdadasdasdjk456ah\ndkahlksjhldakjshdlkjhksdjfhaksjd\nhfkahdkfhsddasdadasdasdjka\nhdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsddasdadasdasdjkahdkahlksjhldakjshdlkjhksdjfhaksjdhfkahdkfhsd000";
                    [view.csCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.csSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 2:
            {
                [[WrapAlertView shareAlertView] showSheetViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initSVC];
                    view.svcTitleLabel.text = @"Alert Verification code View";
                    [view.svcCodeBtn addTarget:self action:@selector(codeBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.svcCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.svcSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            case 3:
            {
                [[WrapAlertView shareAlertView] canHideByTapBlack:YES];
                [[WrapAlertView shareAlertView] showSheetViewBlock:^(UIScrollView *alertView) {
                    WrapCustomView *view = [[WrapCustomView alloc] initSVI];
                    view.sviTitleLabel.text = @"Alert Verification Image View";
                    [view.sviCodeImageView setImage:[UIImage imageNamed:@"right"]];
                    [view.sviCancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [view.sviSureBtn addTarget:self action:@selector(sureBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    [alertView addSubview:view];
                }];
            }
                break;
            default:
                break;
        }
    }
}

-(void)codeBtnAction:(UIButton *)sender
{
    
}

-(void)cancelBtnAction:(UIButton *)sender
{
    [[WrapAlertView shareAlertView] hide];
}

-(void)sureBtnAction:(UIButton *)sender
{
    
}

@end
