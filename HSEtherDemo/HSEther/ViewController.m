//
//  ViewController.m
//  HSEther
//
//  Created by 侯帅 on 2018/4/20.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "ViewController.h"
#import "HSEther.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建钱包
    
    [HSEther hs_createWithPwd:@"11111111" block:^(NSString *address, NSString *keyStore, NSString *mnemonicPhrase, NSString *privateKey) {
        NSLog(@"%@\n%@\n%@\n%@\n",address,keyStore,mnemonicPhrase,privateKey);
    }];
    //更多详情见HSEther
    //欢迎点星星 https://github.com/wolfhous/HSEther
}
@end
