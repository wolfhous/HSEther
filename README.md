# HSEther ether wallet create 



<img src="https://github.com/wolfhous/HSEther/blob/master/seedemo.gif" width="300" hegiht="420" align=center />

<img src="https://upload-images.jianshu.io/upload_images/2923333-3d96e2eb2a0d2df6.png" width="900" hegiht="420" align=center />


## 感谢 www.tokenfunc.org 大力支持
## [中文文档请点我](https://github.com/wolfhous/HSEther/blob/master/README_cn.md)

## Your star is my greatest motivation

### 1.0 Main functions for the time being (2018-04-20)

* 1.0.1 Create a wallet off-line, and generate corresponding algorithmic
mnemonic phrase, private key and keystore ( generate a wallet

* 1.0.2 Verify the keystore and password of the wallet (import the wallet by keystore

* 1.0.3 Verify the private key (import the wallet by private key 

* 1.0.4 Verify the mnemonic phrase (import the wallet by Mnemonic Phrase


**For safety's sake, all above are verified locally and off-line without calling API.
**


### 1.1	Main added functions (2018-05-07)：

* 1.1.1 Check the balance of ethereum

* 1.1.2 Check the balance of ERC20 token based on ethereum public blockchain (the balance of ERC20 token ) 

### 1.2 1.1	Main added functions (2018-06-05)：

* 1.2.1 Ethereum transfer

* 1.2.2 ERC20 token transfer (such as EOS transfer and so on) based on ethereum

### 1.3 1.1	Main added functions (estimated completion time 2018-06-30)：

* 1.3.1 Query the total amount of ERC20 token

* 1.3.2 Query the official icon of ERC20 token

* 1.3.3 Query the decimal places and other things of ERC20 token

### 1.4 Main added functions (estimated completion time 2018-07)

* 1.4.1 **Custom issue of ERC20 token**



------------------------------------------------
# Support cocoaPods
```
# ios version 10.0+
cocoaPods HSEther
```

------------------------------------------------
# See the Demo for specific usage
```
 [1]Create a wallet

+(void)hs_createWithPwd:(NSString *)pwd block:(void(^)()block;
                  
 [2]Mnemonic phrase import
 
+(void)hs_inportMnemonics:(NSString *)mnemonics pwd:(NSString *)pwd block:(void(^)()block;

 [3]KeyStore import
 
+(void)hs_importKeyStore:(NSString *)keyStore pwd:(NSString *)pwd block:(void(^)()block;

 [4]Private key import

+(void)hs_importWalletForPrivateKey:(NSString *)privateKey pwd:(NSString *)pwd block:(void(^)()block;


 [5]Check the balance of eth and ERC20 token

+(void)hs_getBalanceWithTokens:(NSArray<NSString *> *)arrayToken
                   withAddress:(NSString *)address
                         block:(void(^)(NSArray *arrayBanlance,BOOL suc))block;
                         
 [6]Transfer accounts
 
+(void)hs_sendToAssress:(NSString *)toAddress 
                  money:(NSString *)money 
               tokenETH:(NSString *)tokenETH 
                decimal:(NSString *)decimal 
        currentKeyStore:(NSString *)keyStore 
                    pwd:(NSString *)pwd 
               gasPrice:(NSString *)gasPrice 
               gasLimit:(NSString *)gasLimit 
                  block:(void(^)(NSString *hashStr,BOOL suc,HSWalletError error))block;
  ```                            
                              

------------------------------------------------
## Provide .a .frameworke source code including iOS and Android
## Provide technical support including iOS and Android
## Contact me(wechat): iHoushuai
------------------------------------------------
Jianshu addresses：https://www.jianshu.com/p/6839a8c3f220
------------------------------------------------
