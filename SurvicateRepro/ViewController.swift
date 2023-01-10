//
//  ViewController.swift
//  SurvicateRepro
//
//  Created by Gordon Tucker on 1/9/23.
//

import UIKit
import Survicate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SurvicateSdk.shared.enterScreen(value: "Search")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SurvicateSdk.shared.leaveScreen(value: "Search")
    }
}

