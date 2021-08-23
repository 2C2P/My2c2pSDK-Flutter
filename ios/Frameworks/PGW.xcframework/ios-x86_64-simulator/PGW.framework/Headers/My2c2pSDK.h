//
//  my2c2pSDK.h
//  my2c2pSDK
//
//  Version : 3.0.0
//  Update At 31/03/2015
//  Created by 2c2p on 23/1/13.
//  Copyright (c) 2013 2c2p. All rights reserved.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "my2c2pHeader.h"
#import "my2c2pPaymentFormViewController.h"
#import "SubMerchant.h"

#define iOS2c2pLogNoti @"iOS2c2pLogNotification"

typedef void (^APIResponse)(NSDictionary* response);
typedef void (^APIViewControllerAppear)(UINavigationController* otpVC);
typedef void (^APIResponseError)(NSError* error);

@protocol My2c2pSDKDelegate <NSObject>

@optional

- (void)my2c2pSDKWillOpenWebView;
- (void)my2c2pSDKDidOpenWebView;
- (void)my2c2pSDKWillCloseWebViewWithCancel:(BOOL)cancel;
- (void)my2c2pSDKDidCloseWebViewWithCancel:(BOOL)cancel;

@end

@interface My2c2pSDK : NSObject <NSURLConnectionDataDelegate, NSURLConnectionDelegate, UITextFieldDelegate>

@property (nonatomic, assign) id<My2c2pSDKDelegate> delegate;
@property (nonatomic, strong) NSString* merchantID;
@property (nonatomic, strong) NSString* subMerchantID;
@property (nonatomic, strong) NSString* uniqueTransactionCode;
@property (nonatomic, strong) NSString* desc;
@property (nonatomic, assign) double amount;
@property (nonatomic, strong) NSString* currencyCode;
@property (nonatomic, strong) NSString* payCategoryID;
@property (nonatomic, strong) NSString* userDefined1;
@property (nonatomic, strong) NSString* userDefined2;
@property (nonatomic, strong) NSString* userDefined3;
@property (nonatomic, strong) NSString* userDefined4;
@property (nonatomic, strong) NSString* userDefined5;
@property (nonatomic, assign) BOOL enableStoreCard;
@property (nonatomic, assign) BOOL useStoredCardOnly;
@property (nonatomic, strong) NSString* cardHolderName;
@property (nonatomic, strong) NSString* cardHolderEmail;

@property (nonatomic, strong) NSString* storeCardUniqueID;
@property (nonatomic, strong) NSArray *subMerchantList;

@property (nonatomic, strong) NSString* accountNo;

//for cardPin
@property (nonatomic, copy) NSString *cardPin;

//for 3ds
@property (nonatomic, strong) NSString *request3DS;

//For non payment UI
@property (nonatomic, strong) NSString* pan;
@property (nonatomic, assign) int cardExpireMonth;
@property (nonatomic, assign) int cardExpireYear;
@property (nonatomic, copy) NSString* securityCode;
@property (nonatomic, strong) NSString* panCountry;
@property (nonatomic, strong) NSString* panBank;

@property (nonatomic, assign) BOOL productionMode;
//For UI
@property (nonatomic, assign) BOOL paymentUI;
@property (nonatomic, assign) BOOL paymentLoadingIndicator;

//for v8
@property (nonatomic, assign) double version;
@property (nonatomic, assign) BOOL ippTransaction;
@property (nonatomic, assign) int installmentPeriod;
@property (nonatomic, strong) NSString *interestType;
@property (nonatomic, assign) BOOL recurring;
@property (nonatomic, assign) BOOL storeCard;
@property (nonatomic, strong) NSString *invoicePrefix;
@property (nonatomic, assign) double recurringAmount;
@property (nonatomic, assign) BOOL allowAccumulate;
@property (nonatomic, assign) double maxAccumulateAmt;
@property (nonatomic, assign) int recurringInterval;
@property (nonatomic, assign) int recurringCount;
@property (nonatomic, strong) NSString *chargeNextDate;
@property (nonatomic, strong) NSString *chargeOnDate;
@property (nonatomic, strong) NSString *promotion;
@property (nonatomic, strong) NSString *secretKey;
@property (nonatomic, assign) PaymentOption paymentOption;
@property (nonatomic, strong) NSString *hashKey;

//123
@property (nonatomic, strong) NSString *agentCode;
@property (nonatomic, strong) NSString *channelCode;
@property (nonatomic, strong) NSString *paymentExpiry;
@property (nonatomic, strong) NSString *mobileNo;

@property (nonatomic, strong) NSString* statementDescriptor;

//for API 9.0
@property (nonatomic, assign) PaymentChannel paymentChannel;

//for API 9.1
@property (nonatomic, assign) BOOL tokenizeWithoutAuthorization;

//new property 1 Aug 2017
@property (nonatomic, strong) NSString *productCode;
@property (nonatomic, strong) NSString *installmentPeriodFilter;

@property (nonatomic, strong) NSString *mobilePaymentData;
@property (nonatomic, strong) NSString *appleMerchantIdentifier;

#pragma mark - Client methods
- (id)initWithPrivateKey:(NSString*)privateKey;

- (void)requestWithTarget:(UIViewController *)viewController
               onResponse:(APIResponse)completion
                   onFail:(APIResponseError)error;

- (void)requestWithTarget:(UIViewController *)viewController
           AndPaymentForm:(my2c2pPaymentFormViewController *)paymentForm
               onResponse:(APIResponse)completion
                   onFail:(APIResponseError)error;

+ (BOOL)handleOpenURL:(NSURL *)url;
- (NSArray *)paymentChannelEnumList;
- (NSArray *)paymentOptionEnumList;

@end

@interface UIImage (My2c2pResourceBundle)

+ (UIImage *)my2c2pImageWithName:(NSString *)name andSuffix:(NSString *)suffix;

@end

