//
//  TestInfo.h
//  NSUserDefaultsDataSaveDemo
//
//  Created by caochao on 16/5/5.
//  Copyright © 2016年 snailCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestInfo : NSObject<NSCoding>
@property (nonatomic,retain) NSString *username;
@property (nonatomic,retain) NSString *phone;
@property (nonatomic,retain) NSString *ticket;
@property (nonatomic,retain) NSString *email;
@property (nonatomic,retain) NSString *passport;
//混淆
@property (nonatomic,retain) NSString *uiofdsaouiSHJ;
@property (nonatomic,assign) BOOL isLGBT;
@property (nonatomic,retain) NSNumber *age;
-(void)saveLoginInfo;
@end
