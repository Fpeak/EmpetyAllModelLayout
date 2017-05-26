//
//  ViewController.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "ViewController.h"
#import "FPeakLayout.h"
@interface ViewController ()
@property (nonatomic, strong) UIImageView *backImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"全机型适配Demo";
    self.backImage = [[UIImageView alloc]initWithFrame:CGRectMake([FPeakLayout neu_layoutForAlliPhoneWidth:0], [FPeakLayout neu_layoutForAlliPhoneHeight:62], [FPeakLayout neu_layoutForAlliPhoneWidth:375], [FPeakLayout neu_layoutForAlliPhoneHeight:605])];
    self.backImage.image = [UIImage imageNamed:@"scanresultBackImage"];
    [self.view addSubview:self.backImage];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake([FPeakLayout neu_layoutForAlliPhoneWidth:20], [FPeakLayout neu_layoutForAlliPhoneHeight:80], [FPeakLayout neu_layoutForAlliPhoneWidth:335], [FPeakLayout neu_layoutForAlliPhoneHeight:50])];
    label.text = @"你好,我是Peak";
    label.font = [UIFont systemFontOfSize:20];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor redColor];
    [self.backImage addSubview:label];
}


@end
