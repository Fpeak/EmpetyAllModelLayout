//
//  BlockLix.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "BlockLix.h"

@implementation BlockLix

-(void)isAddNumber:(NSInteger)number isLix:(lixOperation)islix isError:(lixError)isError{
    BOOL isOddNum = number % 2 == 0 ? NO : YES;
    if (isOddNum && islix) {
        islix(number);
    }
    if (!isOddNum && isError) {
        isError();
    }
}
@end
