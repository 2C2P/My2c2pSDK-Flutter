# My2c2pSDK for Flutter

[![pub package](https://img.shields.io/pub/v/my2c2psdk)](https://img.shields.io/pub/v/my2c2psdk)
[![Platforms](https://img.shields.io/badge/Platforms-Android-green?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-orange?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)
[![Language](https://img.shields.io/badge/Language-Dart-blue?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)

## Getting Started

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  my2c2psdk: ^0.0.5
```

## System Requirements

The SDK has been developed using `Dart version >=2.12.0`, `iOS Deployment Target 12.0`, and `Android Version 6 (API Level 23)`. To ensure you can actually compile the sdk smoothly, we recommend to use the developed versions. However if needed, you can convert to your preferred version.

| Platform | Minimum Version |
| :-----: | :-----: |
| iOS | 12.0 |
| Android | 6 (API Level 23) | 

## Usage

Import the library in your file:

```dart
import 'package:my2c2psdk/my2c2psdk.dart';
```

Use the My2c2pSDK with your information like this:

```dart
final sdk = My2c2pSDK(
  privateKey: 'Your private key',
);
sdk.merchantId = "JT01";
sdk.uniqueTransactionCode = "123456789";
sdk.desc = "product item 1";
sdk.amount = 20.00;
sdk.currencyCode = "764";
sdk.pan = "5105105105105100";
sdk.cardExpireMonth = 12;
sdk.cardExpireYear = 2024;
sdk.cardHolderName = "John";
sdk.panCountry = "TH";
sdk.secretKey = "123456";
sdk.paymentUI = false;

//set optional fields
sdk.securityCode = "123";

final result = await sdk.proceed();
```

`result` Should be return response from My2c2pSDK in JSON format and can parse to My2c2pSDKResponse class.

For more sample and information please see
[iOS](https://s.2c2p.com/manuals/ios/request_nonui/newpayment.html),
[Android](https://s.2c2p.com/manuals/android/request_nonui/newpayment.html)


## Proguard for Android

Please add following config into your proguard config file.

```text
#Optional for proguard, you may use your own proguard configuration.
-dontusemixedcaseclassnames
-dontpreverify
-optimizationpasses 5
-keepparameternames
-renamesourcefileattribute SourceFile

#Mandatory for PGW SDK
#2C2P PGW Library
-dontwarn com.ccpp.my2c2psdk.**
-keep class com.ccpp.my2c2psdk.** { *; }
-keep interface com.ccpp.my2c2psdk.** { *; }

-keepclassmembers class **.R$* {
    public static <fields>;
}

#okhttp3
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**
-keepclassmembers class * extends javax.net.ssl.SSLSocketFactory {
    private final javax.net.ssl.SSLSocketFactory delegate;
}
-dontwarn javax.annotation.**
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
-dontwarn org.codehaus.mojo.animal_sniffer.*
-dontwarn okhttp3.internal.platform.ConscryptPlatform

#Samsung Pay
-dontwarn com.samsung.**
-keep class com.samsung.** { *; }

#Spongy Castle
-dontwarn org.spongycastle.**
-keep class org.spongycastle.** { *; }

#AliPay
-dontwarn com.alipay.**
-dontwarn org.json.alipay.**
-keep class com.alipay.** { *; }
-keep class org.json.alipay.** { *; }
-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}
-keep class com.alipay.sdk.app.H5PayCallback {
    <fields>;
    <methods>;
}
-keep class com.alipay.android.phone.mrpc.core.** { *; }
-keep class com.alipay.apmobilesecuritysdk.** { *; }
-keep class com.alipay.mobile.framework.service.annotation.** { *; }
-keep class com.alipay.mobilesecuritysdk.face.** { *; }
-keep class com.alipay.tscenter.biz.rpc.** { *; }
-keep class org.json.alipay.** { *; }
-keep class com.alipay.tscenter.** { *; }
-keep class com.ta.utdid2.** { *;}
-keep class com.ut.device.** { *;}
-dontwarn com.ta.utdid2.**
-dontwarn com.ut.device.**
-dontwarn com.alipay.mobilesecuritysdk.**
-dontwarn com.alipay.security.**
```

For more information click [here](https://s.2c2p.com/manuals/android/index.html)

## App Scheme Declaration for iOS (OPTIONAL)

**Note : Scheme required for 123 payment : eNETS (Direct Debit/Web Payment)**

If you want to use eNETS, please add the scheme as following.
- Go to **Target > Select Product > Info > URL Types**
- Add `my2c2p[your merchant ID]` in URL Schemes. If your merchant ID is **JT01** , it will be like following.

![](https://s.2c2p.com/manuals/ios/images/urlscheme.png)

If user want to make payment via Bank (Direct Debit), it will open the Safair instead on in app webview. Without Scheme , safari cannot reopen the app after finish payment.

**Note : Scheme required for `Alipay`**

If you want to use Alipay, please add the scheme as following.
- Go to **Target > Select Product > Info > URL Types**
- Add ***my2c2pAlipay*** in URL Schemes. It will be like following.

![](https://s.2c2p.com/manuals/ios/images/alipayscheme.png)

For more information click [here](https://s.2c2p.com/manuals/ios/setupsdk.html)

## Contributing
2C2P

## License
[MIT](https://choosealicense.com/licenses/mit/)

