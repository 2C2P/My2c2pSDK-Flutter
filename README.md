# My2c2pSDK for Flutter

[![pub package](https://img.shields.io/pub/v/my2c2psdk)](https://pub.dev/packages/http)
[![Platforms](https://img.shields.io/badge/Platforms-Android-green?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-orange?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)
[![Language](https://img.shields.io/badge/Language-Dart-blue?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-Green?style=flat-square)

## Getting Started

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  my2c2psdk: ^0.0.2
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

`result` Should be return response from My2c2pSDK in JSON format.

For more sample and information please see 
[iOS](https://s.2c2p.com/manuals/ios/request_nonui/newpayment.html),
[Android](https://s.2c2p.com/manuals/android/request_nonui/newpayment.html)


## Contributing
2C2P

## License
[MIT](https://choosealicense.com/licenses/mit/)

