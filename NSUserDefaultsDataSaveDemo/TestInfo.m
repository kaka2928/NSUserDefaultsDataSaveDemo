//
//  TestInfo.m
//  NSUserDefaultsDataSaveDemo
//
//  Created by caochao on 16/5/5.
//  Copyright © 2016年 snailCC. All rights reserved.
//

#import "TestInfo.h"

@implementation TestInfo
-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[self init]) {
        self.username=[aDecoder decodeObjectForKey:@"username"];
        self.uiofdsaouiSHJ=[aDecoder decodeObjectForKey:@"uiofdsaouiSHJ"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.passport = [aDecoder decodeObjectForKey:@"passport"];
        self.ticket = [aDecoder decodeObjectForKey:@"ticket"];
        self.isLGBT = [[aDecoder decodeObjectForKey:@"passport"] boolValue];
        self.age = [aDecoder decodeObjectForKey:@"ticket"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_username forKey:@"username"];
    [aCoder encodeObject:_uiofdsaouiSHJ forKey:@"uiofdsaouiSHJ"];
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeObject:_passport forKey:@"passport"];
    [aCoder encodeObject:_ticket forKey:@"ticket"];
    [aCoder encodeObject:[NSNumber numberWithBool:_isLGBT] forKey:@"isLGBT"];
    [aCoder encodeObject:_age forKey:@"age"];
}
-(void)saveLoginInfo{
    
    NSUserDefaults *cache=[NSUserDefaults standardUserDefaults];
    
    NSString *gameKeyStr = [NSString stringWithFormat:@"CC_userinfos"];
    NSData *logininfo=[NSKeyedArchiver archivedDataWithRootObject:self];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:logininfo];

    [cache setObject:array forKey:gameKeyStr];
}
@end
