import Flutter
import UIKit

public class SwiftMy2c2pSDKPlugin: NSObject, FlutterPlugin {
    private static var rootViewController: UIViewController? = nil
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "my2c2psdk", binaryMessenger: registrar.messenger())
        rootViewController = (UIApplication.shared.delegate?.window??.rootViewController)!
        let instance = SwiftMy2c2pSDKPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
            break
        case "proceed":
            proceed(call, result: result)
            break
        default:
            break
        }
        
    }
    
    // MARK: - Proceed function
    private func proceed(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dicts = call.arguments as? [String: Any],
              let jsonString = dicts["request"] as? String
        else {
            result(FlutterError.init(code: "998", message: "Arguments exception", details: nil))
            return
        }
        guard let sdk = mappingSDK(json: jsonString) else {
            result(FlutterError.init(code: "900", message: "Json exception", details: nil))
            return
        }
        
        sdk.request(withTarget: SwiftMy2c2pSDKPlugin.rootViewController!, onResponse: { (response) in
            do {
                let data = try JSONSerialization.data(withJSONObject: response as Any)
                if let string = String(data: data, encoding: .utf8) {
                    result(string)
                } else {
                    result(FlutterError.init(code: "999", message: "Cannot parse response", details: nil))
                }
            } catch let error as NSError {
                result(FlutterError.init(code: "999", message: error.localizedDescription, details: nil))
            }
        }) { (error) in
            if error != nil {
                let errorCode = (error as NSError?)?.code ?? 999
                result(FlutterError.init(code: "\(errorCode)", message: error?.localizedDescription ?? "Failed", details: nil))
            } else {
                result(FlutterError.init(code: "301", message: "The transaction is cancelled", details: nil))
            }
            
        }
    }
    
    private func mappingSDK(json: String) -> My2c2pSDK? {
        do {
            let jsonData = json.data(using: .utf8)!
            let jsonDict = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any?]
            let model = My2c2pSDK(privateKey: jsonDict?["privateKey"] as? String ?? "")!
            model.accountNo = jsonDict?["accountNo"] as? String ?? ""
            model.agentCode = jsonDict?["agentCode"] as? String ?? ""
            model.allowAccumulate = jsonDict?["allowAccumulate"] as? Bool ?? false
            model.amount = jsonDict?["amount"] as? Double ?? 0.0
            model.cardExpireMonth = jsonDict?["cardExpireMonth"] as? Int32 ?? 0
            model.cardExpireYear = jsonDict?["cardExpireYear"] as? Int32 ?? 0
            model.cardHolderEmail = jsonDict?["cardHolderEmail"] as? String ?? ""
            model.cardHolderName = jsonDict?["cardHolderName"] as? String ?? ""
            model.cardPin = jsonDict?["cardPin"] as? String ?? ""
            model.channelCode = jsonDict?["channelCode"] as? String ?? ""
            model.chargeNextDate = jsonDict?["chargeNextDate"] as? String ?? ""
            model.chargeOnDate = jsonDict?["chargeOnDate"] as? String ?? ""
            model.currencyCode = jsonDict?["currencyCode"] as? String ?? ""
            model.desc = jsonDict?["desc"] as? String ?? ""
            model.enableStoreCard = jsonDict?["enableStoreCard"] as? Bool ?? false
            model.installmentPeriod = jsonDict?["installmentPeriod"] as? Int32 ?? 0
            model.installmentPeriodFilter = jsonDict?["installmentPeriodFilter"] as? String ?? ""
            model.interestType = jsonDict?["interestType"] as? String ?? ""
            model.invoicePrefix = jsonDict?["invoicePrefix"] as? String ?? ""
            model.ippTransaction = jsonDict?["ippTransaction"] as? Bool ?? false
            model.maxAccumulateAmt = jsonDict?["maxAccumulateAmt"] as? Double ?? 0.0
            model.merchantID = jsonDict?["merchantID"] as? String ?? ""
            model.mobileNo = jsonDict?["mobileNo"] as? String ?? ""
            model.pan = jsonDict?["pan"] as? String ?? ""
            model.panBank = jsonDict?["panBank"] as? String ?? ""
            model.panCountry = jsonDict?["panCountry"] as? String ?? ""
            model.payCategoryID = jsonDict?["payCategoryID"] as? String ?? ""
            model.paymentChannel = jsonDict?["paymentChannel"] as? NSString? ?? (PaymentChannel.creditCard as NSString)
            model.paymentExpiry = jsonDict?["paymentExpiry"] as? String ?? ""
            model.paymentOption = jsonDict?["paymentOption"]  as? NSString? ?? (PaymentOption.creditCard as NSString)
            model.paymentUI = jsonDict?["paymentUI"] as? Bool ?? false
            model.productCode = jsonDict?["productCode"] as? String ?? ""
            model.productionMode = jsonDict?["productionMode"] as? Bool ?? false
            model.promotion = jsonDict?["promotion"] as? String ?? ""
            model.recurring = jsonDict?["recurring"] as? Bool ?? false
            model.recurringAmount = jsonDict?["recurringAmount"] as? Double ?? 0.0
            model.recurringCount = jsonDict?["recurringCount"] as? Int32 ?? 0
            model.recurringInterval = jsonDict?["recurringInterval"] as? Int32 ?? 0
            model.request3DS = jsonDict?["request3DS"] as? String ?? ""
            model.secretKey = jsonDict?["secretKey"] as? String ?? ""
            model.securityCode = jsonDict?["securityCode"] as? String ?? ""
            model.statementDescriptor = jsonDict?["statementDescriptor"] as? String ?? ""
            model.storeCard = jsonDict?["storeCard"] as? Bool ?? false
            model.storeCardUniqueID = jsonDict?["storedCardUniqueID"] as? String ?? ""
            model.subMerchantID = jsonDict?["subMerchantID"] as? String ?? ""
            model.subMerchantList = jsonDict?["subMerchantList"] as? [Any] ?? []
            model.tokenizeWithoutAuthorization = jsonDict?["tokenizeWithoutAuthorization"] as? Bool ?? false
            model.uniqueTransactionCode = jsonDict?["uniqueTransactionCode"] as? String ?? ""
            model.useStoredCardOnly = jsonDict?["useStoredCardOnly"] as? Bool ?? false
            model.userDefined1 = jsonDict?["userDefined1"] as? String ?? ""
            model.userDefined2 = jsonDict?["userDefined2"] as? String ?? ""
            model.userDefined3 = jsonDict?["userDefined3"] as? String ?? ""
            model.userDefined4 = jsonDict?["userDefined4"] as? String ?? ""
            model.userDefined5 = jsonDict?["userDefined5"] as? String ?? ""
            model.version = jsonDict?["version"] as? Double ?? 0.0
            return model
        } catch let error as NSError {
            return nil
        }
    }
}

