# HSEther

ether wallet create 


cocoaPods HSEther

ios version 10.0+

创建钱包
+(void)hs_createWithPwd:(NSString *)pwd block:(void(^)()block;
                  
 助记词导入
+(void)hs_inportMnemonics:(NSString *)mnemonics pwd:(NSString *)pwd block:(void(^)()block;

 KeyStore 导入
+(void)hs_importKeyStore:(NSString *)keyStore pwd:(NSString *)pwd block:(void(^)()block;

私钥导入
+(void)hs_importWalletForPrivateKey:(NSString *)privateKey pwd:(NSString *)pwd block:(void(^)()block;
                              
                              
                              
                              
                              
