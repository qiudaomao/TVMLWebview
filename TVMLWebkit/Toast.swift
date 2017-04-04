//
//  Toast.swift
//  LazyCat
//
//  Created by zfu on 2017/3/5.
//  Copyright © 2017年 zfu. All rights reserved.
//

import Foundation
import UIKit

public class ToastViewController: UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showToast(text: String) {
        let view_ = ToastView(frame: CGRect(x: 100, y:100, width:200, height: 200), withText: text);
        view_.backgroundColor = UIColor.red
        view_.presentOnView(view: self.view)
    }
}

class ToastView: UIView {
    private let contentView = UIView()
    private let textLabel = UILabel()
    private let text: String?
    public init(frame: CGRect, withText text_: String) {
        text = text_
        super.init(frame: frame)
        contentView.frame = bounds
        addSubview(contentView)
        textLabel.numberOfLines = 1
        textLabel.textAlignment = .center
        addSubview(textLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func presentOnView(view: UIView) {
        view.addSubview(self)
    }
}
