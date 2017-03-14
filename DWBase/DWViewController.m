//
//  DWViewController.m
//  DWBasePart
//
//  Created by Dawn Wang on 2017/3/14.
//  Copyright © 2017年 Dawn Wang. All rights reserved.
//

#import "DWViewController.h"

@interface DWViewController ()
{
    BOOL _priviousPageNavigationBarHidden;
}
@end

@implementation DWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configNav];
    [self configView];
    [self layoutView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    _priviousPageNavigationBarHidden = self.navigationController.navigationBarHidden;
    if(_priviousPageNavigationBarHidden && !_needHideNavigationBar)
        [self.navigationController setNavigationBarHidden:FALSE animated:TRUE];
    else if(!_priviousPageNavigationBarHidden && _needHideNavigationBar)
        [self.navigationController setNavigationBarHidden:TRUE animated:TRUE];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if(_priviousPageNavigationBarHidden && !_needHideNavigationBar)
        [self.navigationController setNavigationBarHidden:FALSE animated:FALSE];
    else if (!_priviousPageNavigationBarHidden && _needHideNavigationBar)
        [self.navigationController setNavigationBarHidden:TRUE animated:FALSE];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - config view

- (void)configNav{

}

- (void)configView {
    
}


- (void)layoutView {
    
}

@end
