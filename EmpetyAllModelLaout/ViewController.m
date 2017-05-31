//
//  ViewController.m
//  EmpetyAllModelLaout
//
//  Created by 高山峰 on 2017/5/26.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "ViewController.h"
#import "FPeakLayout.h"
#import "ReactiveObjC.h"
#import "BlockController.h"
#import "BlockText.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *backImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"全机型适配Demo";
    self.backImage = [[UIImageView alloc]initWithFrame:CGRectMake([FPeakLayout neu_layoutForAlliPhoneWidth:0], [FPeakLayout neu_layoutForAlliPhoneHeight:62], [FPeakLayout neu_layoutForAlliPhoneWidth:375], [FPeakLayout neu_layoutForAlliPhoneHeight:605])];
    self.backImage.image = [UIImage imageNamed:@"scanresultBackImage"];
    self.backImage.userInteractionEnabled = YES;
    [self.view addSubview:self.backImage];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake([FPeakLayout neu_layoutForAlliPhoneWidth:20], [FPeakLayout neu_layoutForAlliPhoneHeight:80], [FPeakLayout neu_layoutForAlliPhoneWidth:335], [FPeakLayout neu_layoutForAlliPhoneHeight:50])];
    label.text = @"你好,我是Peak";
    label.font = [UIFont systemFontOfSize:20];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor redColor];
    [self.backImage addSubview:label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake([FPeakLayout neu_layoutForAlliPhoneWidth:30], CGRectGetMaxY(label.frame)+[FPeakLayout neu_layoutForAlliPhoneHeight:40], [FPeakLayout neu_layoutForAlliPhoneWidth:315], [FPeakLayout neu_layoutForAlliPhoneHeight:30]);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn.backgroundColor = [UIColor greenColor];
    [self.backImage addSubview:btn];
    [[btn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        BlockText *blick = [[BlockText alloc]init];
        [blick myname:@"myname" englishName:^(NSString *num) {
             
        } isError:^{
            
        }];
        BlockController *name = [[BlockController alloc]init];
        [self.navigationController pushViewController:name animated:YES];
    }];
    
    
}


@end
