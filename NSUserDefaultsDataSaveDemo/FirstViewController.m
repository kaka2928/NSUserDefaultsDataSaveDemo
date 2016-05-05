//
//  SecondViewController.m
//  NSUserDefaultsDataSaveDemo
//
//  Created by caochao on 16/5/5.
//  Copyright © 2016年 snailCC. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    


    
    NSString *infoPath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:infoPath];
    NSArray *cachearray=[data objectForKey:@"CC_userinfos"];
    
    if (cachearray) {
        for (int i=0; i<cachearray.count; i++) {
            NSData *data=[cachearray objectAtIndex:i];
            
            NSString *logininfo=[NSKeyedUnarchiver unarchiveObjectWithData:data];
            NSString *str =[[NSString alloc] initWithData:data   encoding:NSASCIIStringEncoding];
            NSLog(@"%@",str);
            
        }
    }

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
