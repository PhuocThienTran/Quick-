//
//  BaseView.swift
//  QuickCare
//
//  Created by DTran on 24/3/20.
//  Copyright © 2020 Quick Apps. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }

    func configure() {

    }
}
