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
    static func log(_ str: String) -> Void
}

@objc class JSBridge : NSObject, JBExports {
    static func showBrowser() {
        DispatchQueue.main.async {
            let wc = ViewController()
            let appd = UIApplication.shared.delegate as! AppDelegate
            let controller = appd.appController
            controller?.navigationController.present(wc, animated: false, completion: {
                //...
                print("show ok")
            })
        }
    }
    static func log(_ str: String) -> Void {
        print("jslog: \(str)")
    }
}
