//
//  BlockText.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/31.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "BlockText.h"

@implementation BlockText

-(void)myname:(NSString *)name englishName:(Block)english isError:(Error)isError{
    BOOL myname = [name isEqualToString: @"高山峰"] ? YES : NO;
    if (myname) {
        NSLog(@"%@",name);
    }else{
        NSLog(@"你的名字输入错误");
    }
}
@end
