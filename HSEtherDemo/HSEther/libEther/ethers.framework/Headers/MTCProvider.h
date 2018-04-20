//
//  MTCProvider.h
//  ethers
//
//  Created by thomasho on 2018/1/20.
//  Copyright © 2018年 Ethers. All rights reserved.
//

#import <ethers/ethers.h>

@interface MTCProvider : JsonRpcProvider

- (instancetype)initWithChainId: (ChainId)chainId;

@end
