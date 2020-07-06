//
//  LocationView.swift
//  QuickCare
//
//  Created by DTran on 24/3/20.
//  Copyright © 2020 Quick Apps. All rights reserved.
//

import UIKit

@IBDesignable class LocationView: BaseView {

    @IBOutlet weak var allowButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!

    var didTapAllow: (() -> Void)?

    @IBAction func allowAction(_ sender: UIButton) {
        didTapAllow?()
    }

    @IBAction func denyAction(_ sender: UIButton) {

    }
}
