//
//  FirstViewController.m
//  NSUserDefaultsDataSaveDemo
//
//  Created by caochao on 16/5/5.
//  Copyright © 2016年 snailCC. All rights reserved.
//

#import "FirstViewController.h"
#import "TestInfo.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestInfo *info = [[TestInfo alloc]init];
    info.username = @"username";
    info.phone = @"phone";
    info.ticket = @"ticket";
    info.email = @"email";
    info.passport = @"passport";
    info.uiofdsaouiSHJ = @"uiofdsaouiSHJ";
    info.isLGBT = YES;
    info.age = @23;
    [info saveLoginInfo];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
