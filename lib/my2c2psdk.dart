/*
 * Created by Nonthawatt Phongwittayapanu on 16/8/21 8:24 PM
 * Copyright © 2021 2C2P. All rights reserved.
 */

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

import 'models/my2c2psdk_type.dart';
import 'models/my2c2psdk_response.dart';

class My2c2pSDK {
  static const MethodChannel _channel = const MethodChannel('my2c2psdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  Future<String?> proceed() async {
    final result = await _channel.invokeMethod('proceed', {
      'request': toJson(),
    });
    return result;
  }

  My2c2pSDK({required this.privateKey})
      : this.merchantId = "",
        this.uniqueTransactionCode = "",
        this.desc = "",
        this.amount = 0.0,
        this.currencyCode = "",
        this.pan = "",
        this.cardExpireMonth = 0,
        this.cardExpireYear = 0,
        this.storedCardUniqueId = "",
        this.securityCode = "",
        this.panCountry = "",
        this.panBank = "",
        this.cardHolderName = "",
        this.cardHolderEmail = "",
        this.payCategoryId = "",
        this.userDefined1 = "",
        this.userDefined2 = "",
        this.userDefined3 = "",
        this.userDefined4 = "",
        this.userDefined5 = "",
        this.storeCard = false,
        this.ippTransaction = false,
        this.installmentPeriod = -1,
        this.interestType = "",
        this.recurring = false,
        this.invoicePrefix = "",
        this.recurringAmount = 0.0,
        this.allowAccumulate = false,
        this.maxAccumulateAmt = 0.0,
        this.recurringInterval = -1,
        this.recurringCount = -1,
        this.chargeNextDate = "",
        this.chargeOnDate = "",
        this.promotion = "",
        this.hashValue = "",
        this.request3DS = "Y",
        this.paymentChannel = PaymentChannel.CREDIT_CARD,
        this.a = "",
        this.statementDescriptor = "",
        this.secretKey = "",
        this.enableStoreCard = false,
        this.productionMode = false,
        this.paymentUI = false,
        this.agentCode = "",
        this.channelCode = "",
        this.paymentExpiry = "",
        this.mobileNo = "",
        this.b = "",
        this.tokenizeWithoutAuthorization = false,
        this.inquiryHashValue = "",
        this.paymentOption = PaymentOption.ALL,
        this.productCode = "",
        this.installmentPeriodFilter = "",
        this.installmentType = InstallmentType.NORMAL,
        this.cardType = CardType.OPEN_LOOP,
        this.useStoredCardOnly = false,
        this.samsungPayServiceId = "",
        this.samsungPayMerchantName = "",
        this.subMerchantId = "",
        this.subMerchantList = [],
        this.accountNo = "",
        this.cardPin = "",
        this.version = "";

  String a;
  String accountNo;
  String agentCode;
  bool allowAccumulate;
  double amount;
  String b;
  int cardExpireMonth;
  int cardExpireYear;
  String cardHolderEmail;
  String cardHolderName;
  String cardPin;
  CardType cardType;
  String channelCode;
  String chargeNextDate;
  String chargeOnDate;
  String currencyCode;
  String desc;
  bool enableStoreCard;
  String hashValue;
  String inquiryHashValue;
  int installmentPeriod;
  String installmentPeriodFilter;
  InstallmentType installmentType;
  String interestType;
  String invoicePrefix;
  bool ippTransaction;
  double maxAccumulateAmt;
  String merchantId;
  String mobileNo;
  String pan;
  String panBank;
  String panCountry;
  String payCategoryId;
  PaymentChannel paymentChannel;
  String paymentExpiry;
  PaymentOption paymentOption;
  bool paymentUI;
  String privateKey;
  String productCode;
  bool productionMode;
  String promotion;
  bool recurring;
  double recurringAmount;
  int recurringCount;
  int recurringInterval;
  String request3DS;
  String samsungPayMerchantName;
  String samsungPayServiceId;
  String secretKey;
  String securityCode;
  String statementDescriptor;
  bool storeCard;
  String storedCardUniqueId;
  String subMerchantId;
  List<SubMerchant> subMerchantList; // SubMerchant
  bool tokenizeWithoutAuthorization;
  String uniqueTransactionCode;
  bool useStoredCardOnly;
  String userDefined1;
  String userDefined2;
  String userDefined3;
  String userDefined4;
  String userDefined5;
  String version;

  factory My2c2pSDK.fromJson(String str) => My2c2pSDK.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory My2c2pSDK.fromMap(Map<String, dynamic> json) {
    final model = My2c2pSDK(privateKey: json["privateKey"] == null ? null : json["privateKey"]);
    model.a = json["a"] == null ? null : json["a"];
    model.accountNo = json["accountNo"] == null ? null : json["accountNo"];
    model.agentCode = json["agentCode"] == null ? null : json["agentCode"];
    model.allowAccumulate = json["allowAccumulate"] == null ? null : json["allowAccumulate"];
    model.amount = json["amount"] == null ? null : json["amount"];
    model.b = json["b"] == null ? null : json["b"];
    model.cardExpireMonth = json["cardExpireMonth"] == null ? null : json["cardExpireMonth"];
    model.cardExpireYear = json["cardExpireYear"] == null ? null : json["cardExpireYear"];
    model.cardHolderEmail = json["cardHolderEmail"] == null ? null : json["cardHolderEmail"];
    model.cardHolderName = json["cardHolderName"] == null ? null : json["cardHolderName"];
    model.cardPin = json["cardPin"] == null ? null : json["cardPin"];
    model.cardType = json["cardType"] == null ? null : json["cardType"];
    model.channelCode = json["channelCode"] == null ? null : json["channelCode"];
    model.chargeNextDate = json["chargeNextDate"] == null ? null : json["chargeNextDate"];
    model.chargeOnDate = json["chargeOnDate"] == null ? null : json["chargeOnDate"];
    model.currencyCode = json["currencyCode"] == null ? null : json["currencyCode"];
    model.desc = json["desc"] == null ? null : json["desc"];
    model.enableStoreCard = json["enableStoreCard"] == null ? null : json["enableStoreCard"];
    model.hashValue = json["hashValue"] == null ? null : json["hashValue"];
    model.inquiryHashValue = json["inquiryHashValue"] == null ? null : json["inquiryHashValue"];
    model.installmentPeriod = json["installmentPeriod"] == null ? null : json["installmentPeriod"];
    model.installmentPeriodFilter = json["installmentPeriodFilter"] == null ? null : json["installmentPeriodFilter"];
    model.installmentType = json["installmentType"] == null ? null : json["installmentType"];
    model.interestType = json["interestType"] == null ? null : json["interestType"];
    model.invoicePrefix = json["invoicePrefix"] == null ? null : json["invoicePrefix"];
    model.ippTransaction = json["ippTransaction"] == null ? null : json["ippTransaction"];
    model.maxAccumulateAmt = json["maxAccumulateAmt"] == null ? null : json["maxAccumulateAmt"];
    model.merchantId = json["merchantID"] == null ? null : json["merchantID"];
    model.mobileNo = json["mobileNo"] == null ? null : json["mobileNo"];
    model.pan = json["pan"] == null ? null : json["pan"];
    model.panBank = json["panBank"] == null ? null : json["panBank"];
    model.panCountry = json["panCountry"] == null ? null : json["panCountry"];
    model.payCategoryId = json["payCategoryID"] == null ? null : json["payCategoryID"];
    model.paymentChannel = json["paymentChannel"] == null ? null : json["paymentChannel"];
    model.paymentExpiry = json["paymentExpiry"] == null ? null : json["paymentExpiry"];
    model.paymentOption = json["paymentOption"] == null ? null : json["paymentOption"];
    model.paymentUI = json["paymentUI"] == null ? null : json["paymentUI"];
    model.privateKey = json["privateKey"] == null ? null : json["privateKey"];
    model.productCode = json["productCode"] == null ? null : json["productCode"];
    model.productionMode = json["productionMode"] == null ? null : json["productionMode"];
    model.promotion = json["promotion"] == null ? null : json["promotion"];
    model.recurring = json["recurring"] == null ? null : json["recurring"];
    model.recurringAmount = json["recurringAmount"] == null ? null : json["recurringAmount"];
    model.recurringCount = json["recurringCount"] == null ? null : json["recurringCount"];
    model.recurringInterval = json["recurringInterval"] == null ? null : json["recurringInterval"];
    model.request3DS = json["request3DS"] == null ? null : json["request3DS"];
    model.samsungPayMerchantName = json["samsungPayMerchantName"] == null ? null : json["samsungPayMerchantName"];
    model.samsungPayServiceId = json["samsungPayServiceId"] == null ? null : json["samsungPayServiceId"];
    model.secretKey = json["secretKey"] == null ? null : json["secretKey"];
    model.securityCode = json["securityCode"] == null ? null : json["securityCode"];
    model.statementDescriptor = json["statementDescriptor"] == null ? null : json["statementDescriptor"];
    model.storeCard = json["storeCard"] == null ? null : json["storeCard"];
    model.storedCardUniqueId = json["storedCardUniqueID"] == null ? null : json["storedCardUniqueID"];
    model.subMerchantId = json["subMerchantID"] == null ? null : json["subMerchantID"];
    model.subMerchantList =
        json["subMerchantList"] == null ? [] : List<SubMerchant>.from(json["subMerchantList"].map((x) => x));
    model.tokenizeWithoutAuthorization =
    json["tokenizeWithoutAuthorization"] == null ? null : json["tokenizeWithoutAuthorization"];
    model.uniqueTransactionCode = json["uniqueTransactionCode"] == null ? null : json["uniqueTransactionCode"];
    model.useStoredCardOnly = json["useStoredCardOnly"] == null ? null : json["useStoredCardOnly"];
    model.userDefined1 = json["userDefined1"] == null ? null : json["userDefined1"];
    model.userDefined2 = json["userDefined2"] == null ? null : json["userDefined2"];
    model.userDefined3 = json["userDefined3"] == null ? null : json["userDefined3"];
    model.userDefined4 = json["userDefined4"] == null ? null : json["userDefined4"];
    model.userDefined5 = json["userDefined5"] == null ? null : json["userDefined5"];
    model.version = json["version"] == null ? null : json["version"];

    return model;
  }

  Map<String, dynamic> toMap() => {
    "a": a,
    "accountNo": accountNo,
    "agentCode": agentCode,
    "allowAccumulate": allowAccumulate,
    "amount": amount,
    "b": b,
    "cardExpireMonth": Platform.isAndroid ? cardExpireMonth.toString().padLeft(2, '0') : cardExpireMonth,
    "cardExpireYear": Platform.isAndroid ? cardExpireYear.toString() : cardExpireYear,
    "cardHolderEmail": cardHolderEmail,
    "cardHolderName": cardHolderName,
    "cardPin": cardPin,
    "cardType": cardType.name,
    "channelCode": channelCode,
    "chargeNextDate": chargeNextDate,
    "chargeOnDate": chargeOnDate,
    "currencyCode": currencyCode,
    "desc": desc,
    "enableStoreCard": enableStoreCard,
    "hashValue": hashValue,
    "inquiryHashValue": inquiryHashValue,
    "installmentPeriod": installmentPeriod,
    "installmentPeriodFilter": installmentPeriodFilter,
    "installmentType": installmentType.name,
    "interestType": interestType,
    "invoicePrefix": invoicePrefix,
    "ippTransaction": ippTransaction,
    "maxAccumulateAmt": maxAccumulateAmt,
    "merchantID": merchantId,
    "mobileNo": mobileNo,
    "pan": pan,
    "panBank": panBank,
    "panCountry": panCountry,
    "payCategoryID": payCategoryId,
    "paymentChannel": Platform.isAndroid ? paymentChannel.name : paymentChannel.value,
    "paymentExpiry": paymentExpiry,
    "paymentOption": Platform.isAndroid ? paymentOption.name : paymentChannel.value,
    "paymentUI": paymentUI,
    "privateKey": privateKey,
    "productCode": productCode,
    "productionMode": productionMode,
    "promotion": promotion,
    "recurring": recurring,
    "recurringAmount": recurringAmount,
    "recurringCount": recurringCount,
    "recurringInterval": recurringInterval,
    "request3DS": request3DS,
    "samsungPayMerchantName": samsungPayMerchantName,
    "samsungPayServiceId": samsungPayServiceId,
    "secretKey": secretKey,
    "securityCode": securityCode,
    "statementDescriptor": statementDescriptor,
    "storeCard": storeCard,
    "storedCardUniqueID": storedCardUniqueId,
    "subMerchantID": subMerchantId,
    "subMerchantList": List<dynamic>.from(subMerchantList.map((x) => x)),
    "tokenizeWithoutAuthorization": tokenizeWithoutAuthorization,
    "uniqueTransactionCode": uniqueTransactionCode,
    "useStoredCardOnly": useStoredCardOnly,
    "userDefined1": userDefined1,
    "userDefined2": userDefined2,
    "userDefined3": userDefined3,
    "userDefined4": userDefined4,
    "userDefined5": userDefined5,
    "version": version,
  };
}
