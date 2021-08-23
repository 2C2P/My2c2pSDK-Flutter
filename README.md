# My2c2pSDK for Flutter



## Getting Started

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  my2c2psdk: ^0.0.1
```

## Usage

Import the library in your file:

```dart
import 'package:my2c2psdk/models/my2c2psdk_request.dart';
import 'package:my2c2psdk/my2c2psdk.dart';
```

Use the My2c2pSDK with your information like this:

```dart
final req = My2c2pSDKRequest(
  privateKey: 'Your private key',
);
req.merchantId = "JT01";
req.uniqueTransactionCode = "123456789";
req.desc = "product item 1";
req.amount = 20.00;
req.currencyCode = "764";
req.pan = "5105105105105100";
req.cardExpireMonth = 12;
req.cardExpireYear = 2024;
req.cardHolderName = "John";
req.panCountry = "TH";
req.secretKey = "123456";
req.paymentUI = false;

//set optional fields
req.securityCode = "123";

final result = await My2c2pSDK.proceed(req);
```

`result` Should be return response from My2c2pSDK in JSON format.

For more sample and information please see 
[iOS](https://s.2c2p.com/manuals/ios/request_nonui/newpayment.html),
[Android](https://s.2c2p.com/manuals/android/request_nonui/newpayment.html)




