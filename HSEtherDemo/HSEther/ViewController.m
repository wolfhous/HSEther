//
//  ViewController.m
//  HSEther
//
//  Created by 侯帅 on 2018/4/20.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "ViewController.h"

#import "BalanceVC.h"
#import "CreateVC.h"
#import "TransactionVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //2018-06-04
    //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
    //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
    
    self.title = @"HSEther.a 1.2";
    
}


- (IBAction)create:(id)sender {
    [self.navigationController pushViewController:[CreateVC new] animated:YES];
    
}

- (IBAction)balance:(id)sender {
    [self.navigationController pushViewController:[BalanceVC new] animated:YES];
}


- (IBAction)transaction:(id)sender {
    [self.navigationController pushViewController:[TransactionVC new] animated:YES];
}












@end
