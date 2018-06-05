//
//  CreateVC.m
//  HSEther
//
//  Created by 侯帅 on 2018/6/4.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "CreateVC.h"
#import "HSEther.h"
@interface CreateVC ()
@property (weak, nonatomic) IBOutlet UILabel *centerLabel;

@end

@implementation CreateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"hs_createWithPwd";
    
    
    //创建钱包 等5秒钟，创建比较慢
    [HSEther hs_createWithPwd:@"11111111" block:^(NSString *address, NSString *keyStore, NSString *mnemonicPhrase, NSString *privateKey) {
        NSLog(@"\n\n%@\n%@\n%@\n%@\n\n提供 非静态库源码，包括iOS和Android\n提供 技术支持，包括iOS和Android\n联系wechat： iHoushuai",address,keyStore,mnemonicPhrase,privateKey);
        NSLog(@"我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai");
        
        self.centerLabel.text = [NSString stringWithFormat:@"【钱包地址address】%@\n\n【官方keyStore】%@\n\n【助记词mnemonicPhrase】%@\n\n【私钥privateKey】%@\n",address,keyStore,mnemonicPhrase,privateKey];
    }];
    
    
    //更多详情见HSEther
    //欢迎点星星 https://github.com/wolfhous/HSEther
    
    
    //
    // 提供 非静态库源码，包括iOS和Android
    // 提供 技术支持，包括iOS和Android
    // 联系wechat： iHoushuai
}


@end
