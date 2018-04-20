//
//  HSEther.h
//  HSEther
//
//  Created by 侯帅 on 2018/4/20.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//  欢迎点星星 https://github.com/wolfhous/HSEther
// 1 添加pch文件，全局引入 #import <UIKit/UIKit.h>
// 2 在需要使用的地方 引入 #import "HSEther.h"
// 3 build setting > vaild architectures 去掉对 armv7的支持
//
//  2018-04-20 版本1.0 上线 (功能：创建、导入）
//  2018-04-30 版本1.2 计划 查询eth余额、查询基于eth的代币余额，您的点心是我最大的动力
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, HSWalletError) {
    HSWalletErrorMnemonicsLength = 0,       //助记词 长度不够
    HSWalletErrorMnemonicsCount = 1,        //助记词 个数不够
    HSWalletErrorMnemonicsValidWord = 2,    //某个 助记词有误（助记词有误）
    HSWalletErrorMnemonicsValidPhrase = 3,  //助记词 有误
    HSWalletErrorPwdLength = 4,             //密码长度不够
    HSWalletErrorKeyStoreLength = 5,        //KeyStore长度不够
    HSWalletErrorKeyStoreValid = 6,         //KeyStore解密失败
    HSWalletErrorPrivateKeyLength = 7,      //私钥长度不够
    HSWalletErrorAddressRepeat = 12,        //钱包导入重复
    
    HSWalletCreateSuc = 8,                  //钱包创建成功
    HSWalletImportMnemonicsSuc = 9,         //助记词导入成功
    HSWalletImportKeyStoreSuc = 10,         //KeyStore导入成功
    HSWalletImportPrivateKeySuc = 11,       //私钥导入成功
};

@interface HSEther : NSObject

/**
 创建钱包

 @param pwd 密码
 @param block 创建成功回调
 */
+(void)hs_createWithPwd:(NSString *)pwd
                  block:(void(^)(NSString *address,NSString *keyStore,NSString *mnemonicPhrase,NSString *privateKey))block;


/**
 助记词导入

 @param mnemonics 助记词 12个英文单词 空格分割
 @param pwd 密码
 @param block 导入回调
 */
+(void)hs_inportMnemonics:(NSString *)mnemonics
                      pwd:(NSString *)pwd
                    block:(void(^)(NSString *address,NSString *keyStore,NSString *mnemonicPhrase,NSString *privateKey,BOOL suc,HSWalletError error))block;

/**
 KeyStore 导入

 @param keyStore keyStore文本，类似json
 @param pwd 密码
 @param block 导入回调
 */
+(void)hs_importKeyStore:(NSString *)keyStore
                     pwd:(NSString *)pwd
                   block:(void(^)(NSString *address,NSString *keyStore,NSString *mnemonicPhrase,NSString *privateKey,BOOL suc,HSWalletError error))block;

/**
 私钥导入

 @param privateKey 私钥
 @param pwd 密码
 @param block 导入回调
 */
+(void)hs_importWalletForPrivateKey:(NSString *)privateKey
                                pwd:(NSString *)pwd
                              block:(void(^)(NSString *address,NSString *keyStore,NSString *mnemonicPhrase,NSString *privateKey,BOOL suc,HSWalletError error))block;
@end
