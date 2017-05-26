
//
//  BlockController.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "BlockController.h"
#import "BlockLix.h"

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
