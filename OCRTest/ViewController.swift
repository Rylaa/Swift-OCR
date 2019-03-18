//
//  ViewController.swift
//  OCRTest
//
//  Created by Yusuf DEMİRKOPARAN on 7.03.2019.
//  Copyright © 2019 Yusuf DEMİRKOPARAN. All rights reserved.
//

import UIKit
import SwiftyTesseract
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swiftyTesseract = SwiftyTesseract(language: .english)
        guard let image = UIImage(named: "1") else { return }
        swiftyTesseract.performOCR(on: image) { recognizedString in
            
            guard let recognizedString = recognizedString else { return }
            print(recognizedString)
            
        }
    }


}

