//
//  BlockText.h
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/31.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Block)(NSString *num);
typedef void (^Error)(void);
@interface BlockText : NSObject

-(void)myname:(NSString *)name  englishName:(Block)english isError:(Error)isError;
@end
