//
//  ViewController.swift
//  QuickCare
//
//  Created by DTran on 21/3/20.
//  Copyright © 2020 Quick Apps. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showFirstEmotion(sender: UIButton) {
        let alertController = UIAlertController(title: "Hooray! We are glad that we can help you in a way.", message: "You can try explore what else this app has to offer by going back to the main page.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "On My Way!", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showSecondEmotion(sender: UIButton) {
        let alertController = UIAlertController(title: "Hmm interesting answer!", message: "We understand that you are not feeling as you had hoped. Unfortunately, we are not able to be there in person to make sure you are okay. However, QuickCare is not going anywhere, you can always come back to it whenever you need it. ", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Yup! I Understand.", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    

    @IBAction func showThirdEmotion(sender: UIButton) {
        let alertController = UIAlertController(title: "Oh No! We are sorry to hear that.", message: "Do you mind letting us know on how we can improve, by going to the Help & Support, and leave us with your opinion on whichever method you feel most comfortable.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "I Understand.", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}

