//
//  JSBridge.swift
//  TVMLWebkit
//
//  Created by zfu on 2017/4/4.
//  Copyright © 2017年 zfu. All rights reserved.
//
import TVMLKit
import Foundation
@objc protocol JBExports: JSExport {
    static func showBrowser() -> Void
    static func showNormalView() -> Void
    static func log(_ str: String) -> Void
}

@objc class JSBridge : NSObject, JBExports {
    static func showBrowser() {
        let wc = WebViewController()
        let appd = UIApplication.shared.delegate as! AppDelegate
        let controller = appd.appController
        controller?.navigationController.present(wc, animated: false, completion: {
            //...
            print("show toast")
        })
    }
    static func log(_ str: String) -> Void {
        print("jslog: \(str)")
    }
    static func showNormalView() -> Void {
        let appd = UIApplication.shared.delegate as! AppDelegate
        let controller = appd.appController
        let toast = ToastViewController()
        controller?.navigationController.present(toast, animated: false, completion: {
            //...
            print("show toast")
            toast.showToast(text: "abc")
        })
    }
}
