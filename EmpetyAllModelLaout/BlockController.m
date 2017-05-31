
//
//  BlockController.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "BlockController.h"
#import "BlockLix.h"
#import "BlockText.h"
@interface BlockController ()

@end

@implementation BlockController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Block";
    BlockLix *block = [[BlockLix alloc]init];
   [block isAddNumber:9 isLix:^(NSInteger number) {
       NSLog(@"is number %ld",number);
    } isError:^{
        NSLog(@"not my number");
    }];
    
    BlockText *block1 = [[BlockText alloc]init];
    [block1 myname:@"高峰" englishName:^(NSString *num) {
        
    } isError:^{
        
    }];

}



@end
