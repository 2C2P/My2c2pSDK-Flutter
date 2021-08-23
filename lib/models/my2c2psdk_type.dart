/*
 * Created by Nonthawatt Phogwittayapanu on 17/8/21 7:03 PM
 * Copyright © 2021 2C2P. All rights reserved.
 */

import 'dart:io';

enum PaymentChannel {
  CREDIT_CARD,
  MPU,
  ALIPAY,
  UPOP,
  MASTER_PASS, // MPASS
  ONE_TWO_THREE, // 123
  SAMSUNG_PAY, // SSPAY
  KCP,
  GCASH,
  KBZ,
  WAVEPAY, // WAVE
  TOUCH_N_GO, // TNG
  GRAB_PAY, // GRAB
  BOOST,
  MOMO,
  TRUE_MONEY,
  OK_DOLLAR
}

extension PaymentChannelExtension on PaymentChannel {
  String get name => this.toString().split('.').last;

  String get value => _toValue();
  String _toValue() {
    switch (this) {
      case PaymentChannel.CREDIT_CARD:
        return Platform.isAndroid ? 'CREDIT_CARD' : 'CC';
      case PaymentChannel.MPU:
        return 'MPU';
      case PaymentChannel.ALIPAY:
        return 'ALIPAY';
      case PaymentChannel.UPOP:
        return 'UPOP';
      case PaymentChannel.MASTER_PASS:
        return 'MPASS';
      case PaymentChannel.ONE_TWO_THREE:
        return '123';
      case PaymentChannel.SAMSUNG_PAY:
        return 'SSPAY';
      case PaymentChannel.KCP:
        return 'KCP';
      case PaymentChannel.GCASH:
        return 'GCASH';
      case PaymentChannel.KBZ:
        return 'KBZ';
      case PaymentChannel.WAVEPAY:
        return 'WAVE';
      case PaymentChannel.TOUCH_N_GO:
        return 'TNG';
      case PaymentChannel.GRAB_PAY:
        return 'GRAB';
      case PaymentChannel.BOOST:
        return 'BOOST';
      case PaymentChannel.MOMO:
        return 'MOMO';
      case PaymentChannel.TRUE_MONEY:
        return 'TRUEMONEY';
      case PaymentChannel.OK_DOLLAR:
        return 'OKDOLLAR';
    }
  }
}

enum PaymentOption {
  ALL,
  FULL,
  INSTALLMENT, // IPP
  CREDIT_CARD, // CC
  CREDIT_CARD_INSTALLMENT, // B
  ONE_TWO_THREE, // 123
  MPU,
  UPOP,
  ALIPAY,
  SAMSUNG_PAY, //SSPAY
  KCP,
  GCASH,
  KBZ,
  WAVEPAY,
  MASTER_PASS, // MPASS
  BANK,
  KIOSK,
  OVER_THE_COUNTER, // OTC
  TOUCH_N_GO, // TNG
  GRAB_PAY, // GRAB
  BOOST,
  LOAN_CARD, // LOAN
  MOMO,
  TRUE_MONEY,
  OK_DOLLAR
}

extension PaymentOptionExtension on PaymentOption {
  String get name => this.toString().split('.').last;

  String get value => _toValue();
  String _toValue() {
    switch (this) {
      case PaymentOption.ALL:
        return 'ALL';
      case PaymentOption.FULL:
        return 'FULL';
      case PaymentOption.INSTALLMENT:
        return 'IPP';
      case PaymentOption.CREDIT_CARD:
        return 'CC';
      case PaymentOption.CREDIT_CARD_INSTALLMENT:
        return 'B';
      case PaymentOption.ONE_TWO_THREE:
        return '123';
      case PaymentOption.MPU:
        return 'MPU';
      case PaymentOption.UPOP:
        return 'UPOP';
      case PaymentOption.ALIPAY:
        return 'ALIPAY';
      case PaymentOption.SAMSUNG_PAY:
        return 'SSPAY';
      case PaymentOption.KCP:
        return 'KCP';
      case PaymentOption.GCASH:
        return 'GCASH';
      case PaymentOption.KBZ:
        return 'KBZ';
      case PaymentOption.WAVEPAY:
        return 'WAVE';
      case PaymentOption.MASTER_PASS:
        return 'MPASS';
      case PaymentOption.BANK:
        return 'BANK';
      case PaymentOption.KIOSK:
        return 'KIOSK';
      case PaymentOption.OVER_THE_COUNTER:
        return 'OTC';
      case PaymentOption.TOUCH_N_GO:
        return 'TNG';
      case PaymentOption.GRAB_PAY:
        return 'GRAB';
      case PaymentOption.BOOST:
        return 'BOOST';
      case PaymentOption.LOAN_CARD:
        return 'LOAN';
      case PaymentOption.MOMO:
        return 'MOMO';
      case PaymentOption.TRUE_MONEY:
        return 'TRUEMONEY';
      case PaymentOption.OK_DOLLAR:
        return 'OKDOLLAR';
    }
  }
}

enum InstallmentType {
  NORMAL, // N
  LOAN_CARD // L

}

extension InstallmentTypeExtension on InstallmentType {
  String get name => this.toString().split('.').last;

  String get value => _toValue();
  String _toValue() {
    switch (this) {
      case InstallmentType.NORMAL:
        return 'N';
      case InstallmentType.LOAN_CARD:
        return 'L';
    }
  }
}

enum CardType {
  OPEN_LOOP, //O
  CLOSED_LOOP // C
}

extension CardTypeExtension on CardType {
  String get name => this.toString().split('.').last;

  String get value => _toValue();
  String _toValue() {
    switch (this) {
      case CardType.OPEN_LOOP:
        return 'O';
      case CardType.CLOSED_LOOP:
        return 'C';
    }
  }
}
