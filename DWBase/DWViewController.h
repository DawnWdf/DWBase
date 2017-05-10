//
//  DWViewController.h
//  DWBasePart
//
//  Created by Dawn Wang on 2017/3/14.
//  Copyright © 2017年 Dawn Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DWViewController : UIViewController

@property(nonatomic,assign) BOOL needHideNavigationBar;

- (void)configNav;
- (void)configView;
- (void)layoutView;

- (void)setupViewModel;

@end
