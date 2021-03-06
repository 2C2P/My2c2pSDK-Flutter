//
//  cardInformationViewController.h
//  my2c2pSDK
//
//  Created by Htain Lin Shwe on 26/11/13.
//  Copyright (c) 2013 2c2p. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "my2c2pHeader.h"

@class My2c2pSDK;

@protocol my2c2pPaymentFormViewControllerDelegate <NSObject>

@optional

- (void)loadChannel:(PaymentChannel)channel;
- (void)cardInformationConfirmWithDictionary:(NSDictionary *)dictionary AndViewController:(UIViewController*)controller;
- (void)paymentUIError: (NSError *) error;
- (void)paymentUIResponse: (NSString *) responseMessage responseCode: (NSString *) responseCode;
- (void)oneTwoThreePaymentDictionary:(NSDictionary *)dictionary AndViewController:(UIViewController *)controller;
- (void)submitPaymentRequest:(My2c2pSDK *)sdk;
- (void)paymentFormDidReceiveMerchantDetail: (NSDictionary *)response;
- (void)showLoadingDialog;
- (void)dismissLoadingDialog;

@end

@protocol my2c2pPaymentFormViewControllerSourceDelegate <NSObject>

@optional

- (void)paymentFormViewDidLoad;

@end

@interface my2c2pPaymentFormViewController : UIViewController

@property (nonatomic, strong) id<my2c2pPaymentFormViewControllerDelegate> delegate;
@property (nonatomic, strong) id<my2c2pPaymentFormViewControllerSourceDelegate> delegateVC;

@property (nonatomic) BOOL useCustomView;
@property (nonatomic, assign) BOOL productionMode;
@property (nonatomic, strong) UIImage *navBarImage;
@property (nonatomic, strong) UIColor *navBarColor;
@property (nonatomic, strong) UIColor *navButtonTintColor;
@property (nonatomic, strong) UIColor *navTitleColor;
@property (nonatomic, strong) UIImage *navLogo;
@property (nonatomic, strong) NSString *navTitle;
@property (nonatomic, weak) IBOutlet UIButton *confirmbtn;
@property (nonatomic, weak) IBOutlet UIButton *storeCardConfirmbtn;
@property (nonatomic, weak) IBOutlet UIButton *useNewCardBtn;
@property (nonatomic, weak) IBOutlet UIButton *creditCardCVVInfo;
@property (nonatomic, weak) IBOutlet UIButton *storeCreditCardCVVInfo;
@property (nonatomic, assign, readonly) PaymentChannel currentPaymentChannel;
@property (nonatomic, readonly, strong) NSArray *paymentOptionServiceList;

- (void)setSDK:(My2c2pSDK *) sdk;
- (void)setMerchantID:(NSString *)merchantID;
- (void)setSubMerchantID:(NSString *)subMerchantID;
- (void)setAmount:(double)amount;
- (void)setInvoicenumber:(NSString *)invoicenumber;
- (void)setCurrencyCode:(NSString *)currencyCode;
- (void)setInterestType:(NSString *)interestType;
- (void)setPromotion:(NSString *)promotion;
- (void)setAllowIPP:(BOOL)ipp;
- (void)setPaymentOption:(PaymentOption)paymentOption;
- (void)setRequest3ds:(NSString *)request3ds;
- (void)setStoreCardUniqueId:(NSString *)storeCardUniqueId;
- (void)setRecurring:(BOOL)recurring;
- (void)setInvoicePrefix:(NSString *)invoicePrefix;
- (void)setMWRequest:(id)mwrequest;
- (void)setProductDetails:(NSString *)productDetails;
- (void)setInstallmentPeriodFilter:(NSString *)installmentPeriodFilter;
- (void)setEmail:(NSString *)email;
- (void)setName:(NSString *)name;
- (void)setAllowStoreCard:(BOOL)allow;
- (void)setUseStoredCardOnly:(BOOL)useStoreCardOnly;
- (void)setMaskedPan:(NSString *)maskedPan;
- (void)setSubMerchantList:(NSArray *)list;
- (BOOL)isAutoRedirectImmediate;
- (void)setProductCode:(NSString *)productCode;
- (void)setTokenizeWithoutAuthorization:(BOOL)tokenizeWithoutAuthorization;

- (UINavigationController *)navControllerWithRootViewController:(UIViewController*)vc;

@end
