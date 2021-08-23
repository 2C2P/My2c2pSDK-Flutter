/*
 * Created by Nonthawatt Phogwittayapanu on 17/8/21 7:03 PM
 * Copyright © 2021 2C2P. All rights reserved.
 */

import 'dart:convert';

class My2c2pSDKResponse {
  My2c2pSDKResponse({
    this.ippPeriod,
    this.ippInterestType,
    this.ippInterestRate,
    this.ippMerchantAbsorbRate,
    this.paidChannel,
    this.paidAgent,
    this.paymentChannel,
    this.backendInvoice,
    this.issuerCountry,
    this.bankName,
    this.subMerchantList,
    this.version,
    this.timeStamp,
    this.respCode,
    this.merchantId,
    this.subMerchantId,
    this.pan,
    this.amt,
    this.uniqueTransactionCode,
    this.tranRef,
    this.approvalCode,
    this.refNumber,
    this.eci,
    this.paymentScheme,
    this.processBy,
    this.dateTime,
    this.status,
    this.raw,
    this.failReason,
    this.userDefined1,
    this.userDefined2,
    this.userDefined3,
    this.userDefined4,
    this.userDefined5,
    this.storeCardUniqueId,
    this.recurringUniqueId,
    this.hashValue,
  });

  String? ippPeriod;
  String? ippInterestType;
  String? ippInterestRate;
  String? ippMerchantAbsorbRate;
  String? paidChannel;
  String? paidAgent;
  String? paymentChannel;
  String? backendInvoice;
  String? issuerCountry;
  String? bankName;
  SubMerchantList? subMerchantList;
  String? version;
  String? timeStamp;
  String? respCode;
  String? merchantId;
  String? subMerchantId;
  String? pan;
  String? amt;
  String? uniqueTransactionCode;
  String? tranRef;
  String? approvalCode;
  String? refNumber;
  String? eci;
  String? paymentScheme;
  String? processBy;
  String? dateTime;
  String? status;
  String? raw;
  String? failReason;
  String? userDefined1;
  String? userDefined2;
  String? userDefined3;
  String? userDefined4;
  String? userDefined5;
  String? storeCardUniqueId;
  String? recurringUniqueId;
  String? hashValue;

  factory My2c2pSDKResponse.fromJson(String str) => My2c2pSDKResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory My2c2pSDKResponse.fromMap(Map<String, dynamic> json) => My2c2pSDKResponse(
        ippPeriod: json["ippPeriod"] == null ? null : json["ippPeriod"],
        ippInterestType: json["ippInterestType"] == null ? null : json["ippInterestType"],
        ippInterestRate: json["ippInterestRate"] == null ? null : json["ippInterestRate"],
        ippMerchantAbsorbRate: json["ippMerchantAbsorbRate"] == null ? null : json["ippMerchantAbsorbRate"],
        paidChannel: json["paidChannel"] == null ? null : json["paidChannel"],
        paidAgent: json["paidAgent"] == null ? null : json["paidAgent"],
        paymentChannel: json["paymentChannel"] == null ? null : json["paymentChannel"],
        backendInvoice: json["backendInvoice"] == null ? null : json["backendInvoice"],
        issuerCountry: json["issuerCountry"] == null ? null : json["issuerCountry"],
        bankName: json["bankName"] == null ? null : json["bankName"],
        subMerchantList: json["subMerchantList"] == null ? null : SubMerchantList.fromMap(json["subMerchantList"]),
        version: json["version"] == null ? null : json["version"],
        timeStamp: json["timeStamp"] == null ? null : json["timeStamp"],
        respCode: json["respCode"] == null ? null : json["respCode"],
        merchantId: json["merchantID"] == null ? null : json["merchantID"],
        subMerchantId: json["subMerchantID"] == null ? null : json["subMerchantID"],
        pan: json["pan"] == null ? null : json["pan"],
        amt: json["amt"] == null ? null : json["amt"],
        uniqueTransactionCode: json["uniqueTransactionCode"] == null ? null : json["uniqueTransactionCode"],
        tranRef: json["tranRef"] == null ? null : json["tranRef"],
        approvalCode: json["approvalCode"] == null ? null : json["approvalCode"],
        refNumber: json["refNumber"] == null ? null : json["refNumber"],
        eci: json["eci"] == null ? null : json["eci"],
        paymentScheme: json["paymentScheme"] == null ? null : json["paymentScheme"],
        processBy: json["processBy"] == null ? null : json["processBy"],
        dateTime: json["dateTime"] == null ? null : json["dateTime"],
        status: json["status"] == null ? null : json["status"],
        raw: json["raw"] == null ? null : json["raw"],
        failReason: json["failReason"] == null ? null : json["failReason"],
        userDefined1: json["userDefined1"] == null ? null : json["userDefined1"],
        userDefined2: json["userDefined2"] == null ? null : json["userDefined2"],
        userDefined3: json["userDefined3"] == null ? null : json["userDefined3"],
        userDefined4: json["userDefined4"] == null ? null : json["userDefined4"],
        userDefined5: json["userDefined5"] == null ? null : json["userDefined5"],
        storeCardUniqueId: json["storeCardUniqueID"] == null ? null : json["storeCardUniqueID"],
        recurringUniqueId: json["recurringUniqueID"] == null ? null : json["recurringUniqueID"],
        hashValue: json["hashValue"] == null ? null : json["hashValue"],
      );

  Map<String, dynamic> toMap() => {
        "ippPeriod": ippPeriod == null ? null : ippPeriod,
        "ippInterestType": ippInterestType == null ? null : ippInterestType,
        "ippInterestRate": ippInterestRate == null ? null : ippInterestRate,
        "ippMerchantAbsorbRate": ippMerchantAbsorbRate == null ? null : ippMerchantAbsorbRate,
        "paidChannel": paidChannel == null ? null : paidChannel,
        "paidAgent": paidAgent == null ? null : paidAgent,
        "paymentChannel": paymentChannel == null ? null : paymentChannel,
        "backendInvoice": backendInvoice == null ? null : backendInvoice,
        "issuerCountry": issuerCountry == null ? null : issuerCountry,
        "bankName": bankName == null ? null : bankName,
        "subMerchantList": subMerchantList == null ? null : subMerchantList?.toMap(),
        "version": version == null ? null : version,
        "timeStamp": timeStamp == null ? null : timeStamp,
        "respCode": respCode == null ? null : respCode,
        "merchantID": merchantId == null ? null : merchantId,
        "subMerchantID": subMerchantId == null ? null : subMerchantId,
        "pan": pan == null ? null : pan,
        "amt": amt == null ? null : amt,
        "uniqueTransactionCode": uniqueTransactionCode == null ? null : uniqueTransactionCode,
        "tranRef": tranRef == null ? null : tranRef,
        "approvalCode": approvalCode == null ? null : approvalCode,
        "refNumber": refNumber == null ? null : refNumber,
        "eci": eci == null ? null : eci,
        "paymentScheme": paymentScheme == null ? null : paymentScheme,
        "processBy": processBy == null ? null : processBy,
        "dateTime": dateTime == null ? null : dateTime,
        "status": status == null ? null : status,
        "raw": raw == null ? null : raw,
        "failReason": failReason == null ? null : failReason,
        "userDefined1": userDefined1 == null ? null : userDefined1,
        "userDefined2": userDefined2 == null ? null : userDefined2,
        "userDefined3": userDefined3 == null ? null : userDefined3,
        "userDefined4": userDefined4 == null ? null : userDefined4,
        "userDefined5": userDefined5 == null ? null : userDefined5,
        "storeCardUniqueID": storeCardUniqueId == null ? null : storeCardUniqueId,
        "recurringUniqueID": recurringUniqueId == null ? null : recurringUniqueId,
        "hashValue": hashValue == null ? null : hashValue,
      };
}

class SubMerchantList {
  SubMerchantList({
    this.subMerchant,
  });

  List<SubMerchant>? subMerchant = [];

  factory SubMerchantList.fromJson(String str) => SubMerchantList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubMerchantList.fromMap(Map<String, dynamic> json) => SubMerchantList(
        subMerchant: json["subMerchant"] == null
            ? null
            : List<SubMerchant>.from(json["subMerchant"].map((x) => SubMerchant.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "subMerchant": subMerchant == null ? null : List<SubMerchant>.from(subMerchant?.map((x) => x.toMap()) ?? []),
      };
}

class SubMerchant {
  SubMerchant({
    this.merchantId,
    this.uniqueTransactionCode,
    this.amount,
    this.amountDouble,
    this.desc,
  });

  String? merchantId;
  String? uniqueTransactionCode;
  String? amount;
  double? amountDouble = 0.0;
  String? desc;

  factory SubMerchant.fromJson(String str) => SubMerchant.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubMerchant.fromMap(Map<String, dynamic> json) => SubMerchant(
        merchantId: json["merchantID"] == null ? null : json["merchantID"],
        uniqueTransactionCode: json["uniqueTransactionCode"] == null ? null : json["uniqueTransactionCode"],
        amount: json["amount"] == null ? null : json["amount"],
        amountDouble: json["amountDouble"] == null ? null : json["amountDouble"],
        desc: json["desc"] == null ? null : json["desc"],
      );

  Map<String, dynamic> toMap() => {
        "merchantID": merchantId == null ? null : merchantId,
        "uniqueTransactionCode": uniqueTransactionCode == null ? null : uniqueTransactionCode,
        "amount": amount == null ? null : amount,
        "amountDouble": amountDouble == null ? null : amountDouble,
        "desc": desc == null ? null : desc,
      };
}
