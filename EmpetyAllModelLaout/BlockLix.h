//
//  BlockLix.h
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^lixOperation)(NSInteger number1);
typedef void (^lixError)(void);
@interface BlockLix : NSObject

-(void)isAddNumber:(NSInteger)number isLix:(lixOperation)islix isError:(lixError)isError;
@end
