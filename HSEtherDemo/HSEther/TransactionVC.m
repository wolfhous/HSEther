//
//  TransactionVC.m
//  HSEther
//
//  Created by 侯帅 on 2018/6/4.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "TransactionVC.h"

#import "HSEther.h"
@interface TransactionVC ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmented;
@property (weak, nonatomic) IBOutlet UITextView *keystore;
@property (weak, nonatomic) IBOutlet UITextField *pwd;
@property (weak, nonatomic) IBOutlet UITextField *toAddress;
@property (weak, nonatomic) IBOutlet UITextField *money;
@property (weak, nonatomic) IBOutlet UILabel *tokenAddressLabel;
@property (weak, nonatomic) IBOutlet UITextField *tokenAddress;
@property (weak, nonatomic) IBOutlet UIButton *sendBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sendBtnTop;

@end

@implementation TransactionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"hs_sendToAssress";
    
    self.keystore.layer.masksToBounds = YES;
    self.keystore.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.keystore.layer.borderWidth = 0.7;
    self.keystore.layer.cornerRadius = 4;
    
    [self clickSegmented:self.segmented];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (IBAction)clickSegmented:(id)sender {
    if (self.segmented.selectedSegmentIndex == 0) {
        [UIView animateWithDuration:0.5 animations:^{
            self.sendBtnTop.constant = -50;
            self.tokenAddress.alpha = 0;
            self.tokenAddressLabel.alpha = 0;
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            self.tokenAddress.hidden = YES;
            self.tokenAddressLabel.hidden = YES;
        }];
    }else{
        self.tokenAddress.hidden = NO;
        self.tokenAddressLabel.hidden = NO;
        [UIView animateWithDuration:0.5 animations:^{
            self.sendBtnTop.constant = 20;
            self.tokenAddress.alpha = 1;
            self.tokenAddressLabel.alpha = 1;
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {
        }];
    }
}

- (IBAction)clickSendBtn:(id)sender {
    //可打开以下注释验证
    
//    if (self.keystore.text.length < 1 || self.pwd.text.length < 1 ||self.toAddress.text.length < 1 ||self.money.text.length < 1) {
//        NSLog(@"亲，麻烦信息填写完整");
//        return;
//    }
//    if (self.segmented.selectedSegmentIndex == 1 && self.tokenAddress.text.length < 1) {
//        NSLog(@"亲，麻烦tokenAddress信息填写完整");
//        return;
//    }
    
    // 转账没有做余额不足验证，最好请提前自行验证
    
    
    
    //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
    //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
    
    
    [self.sendBtn setTitle:@"正在转账...请稍后..." forState:0];
    
    [HSEther hs_sendToAssress:self.tokenAddress.text money:self.money.text tokenETH:self.segmented.selectedSegmentIndex == 0 ? nil:self.tokenAddress.text decimal:self.segmented.selectedSegmentIndex == 0 ? @"18":@"4" currentKeyStore:self.keystore.text pwd:self.pwd.text gasPrice:@"5" gasLimit:nil block:^(NSString *hashStr, BOOL suc, HSWalletError error) {
        //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
        //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
        if (suc) {
            //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
            //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"转账成功！哈希值为：" message:hashStr preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"复制哈希并跳转官网查询" style:0 handler:^(UIAlertAction * _Nonnull action) {
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                pasteboard.string = hashStr;
                
                UIWebView *web = [[UIWebView alloc]initWithFrame:self.view.frame];
                [self.view addSubview:web];
                [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://etherscan.io/tx/%@",hashStr]]]];
                self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"关闭网页" style:UIBarButtonItemStylePlain target:self action:@selector(clickRightItem)];
            }];
            
            [alertVC addAction:sure];
            [self presentViewController:alertVC animated:YES completion:nil];
            [self.sendBtn setTitle:@"转账成功/点击再来一次" forState:0];
        }else{
            //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
            //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
            [self.sendBtn setTitle:@"转账失败/点击再来一次" forState:0];
        }
    }];
}

-(void)clickRightItem{
    //最近有很多人加我微信，全是问钱包 创建 导入 签名 验签 查询 转账 web3配置 ....
    //我建了一个微信ios以太坊开发收费群（每人200元），里面有此静态库源文件，我还在群里做技术解答。若感兴趣可以加我微信iHoushuai
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[UIWebView class]]) {
            [v removeFromSuperview];
            self.navigationItem.rightBarButtonItem = nil;
            break;
        }
    }
}



@end
