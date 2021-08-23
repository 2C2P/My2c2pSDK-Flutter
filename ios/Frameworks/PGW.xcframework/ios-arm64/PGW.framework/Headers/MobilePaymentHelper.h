//
//  MobilePaymentHelper.h
//  my2c2pSDK
//
//  Created by DavidBilly PK on 24/03/20.
//  Copyright © 2020 2c2p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "My2c2pSDK.h"

@class MobilePaymentHelper;

@interface MobilePaymentHelper : NSObject

+ (BOOL)isMobilePayment: (My2c2pSDK *) sdk;
+ (BOOL)isApplePaySupported;

@end
