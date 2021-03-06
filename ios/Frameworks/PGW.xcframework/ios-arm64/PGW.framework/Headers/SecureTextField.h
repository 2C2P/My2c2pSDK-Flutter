//
//  SecureTextField.h
//  SecureTextField
//
//  Created by 2c2p on 18/1/16.
//  Copyright © 2016 2c2p. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecureTextField : UITextField

@property (nonatomic,assign) BOOL productionMode;

- (NSString *)getErrorMessageFromValidateCVV;
- (NSString *)getErrorMessageFromValidateDate;
- (NSString *)getErrorMessageFromValidateCard;
- (NSString *)getErrorMessageFromValidateCardPin;
- (NSArray *)textMY;
- (BOOL)isEmptyString;
- (BOOL)shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string AndMaxLength:(int)length;
- (BOOL)shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string AllowOnlyNumber:(BOOL)allowOnlyNumber AndMaxLength:(int)length;

- (BOOL)isSupportCardFromArray:(NSArray *)availableCards;

//fixes for [PGWEX-146]
- (int) getCardTypeForInput;
@end

@interface NSString (CardValidation)

- (BOOL)isSupportCardFromBinList:(NSArray *)binList;

@end
