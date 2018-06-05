//
//  BalanceVC.m
//  HSEther
//
//  Created by 侯帅 on 2018/6/4.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "BalanceVC.h"

#import "HSEther.h"
@interface BalanceVC ()
@property (weak, nonatomic) IBOutlet UILabel *centerLabel;

@end

@implementation BalanceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"hs_getBalanceWithTokens";
    
    NSLog(@"我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai");
    // 查询余额 0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0 为eos的token
    //0x0806552bc66a44d9ebe4af007cbb93114c4c0a76 ZAG token
    //0x6f259637dcd74c767781e37bc6133cd6a68aa161 HT  token
    [HSEther hs_getBalanceWithTokens:@[@"0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0",@"0x0806552bc66a44d9ebe4af007cbb93114c4c0a76"] withAddress:@"0xe83aec696478bba2404eaa0eb9b1f2d58269d637" block:^(NSArray *arrayBanlance, BOOL suc) {
        NSLog(@"\n\n\n以太坊地址【0xe83aec696478bba2404eaa0eb9b1f2d58269d637】的\n以太坊余额为%@\nEOS余额为%@\nZAG余额为%@\n关于余额为何特别长，因为不同代币数量小数位数是不一样的，比如以太坊可以保留18位小数\n\n\n提供 非静态库源码，包括iOS和Android\n提供 技术支持，包括iOS和Android\n联系wechat： iHoushuai",arrayBanlance.firstObject,arrayBanlance[1],arrayBanlance.lastObject);
        
        
        self.centerLabel.text = [NSString stringWithFormat:@"以太坊地址【0xe83aec696478bba2404eaa0eb9b1f2d58269d637】的\n\n以太坊余额为 %@\n\nEOS余额为 %@\n\nZAG余额为 %@\n\n\n关于余额为何特别长，因为不同代币数量小数位数是不一样的，比如以太坊可以保留18位小数",arrayBanlance.firstObject,arrayBanlance[1],arrayBanlance.lastObject];
        
        //余额验证请点击
        //https://etherscan.io/address/0xe83aec696478bba2404eaa0eb9b1f2d58269d637
    }];
}


@end
