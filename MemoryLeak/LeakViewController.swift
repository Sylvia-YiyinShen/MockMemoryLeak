//
//  LeakViewController.swift
//  MemoryLeak
//
//  Created by Zhihui Sun on 4/4/19.
//  Copyright © 2019 Sylvia Shen. All rights reserved.
//

import UIKit

class AClass {
    var viewController: UIViewController?
}

class LeakViewController: UIViewController {
    private var aBlock: (() -> Void)?
    private var aClass: AClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mockMemoryLeakOne()
        mockMemoryLeakTwo()
    }
    
    // an obvious retain cycle
    private func mockMemoryLeakOne() {
        aClass = AClass()
        aClass?.viewController = self
    }
    
    // self passed as a strong reference to a block
    private func mockMemoryLeakTwo() {
        aBlock = {
            print(self)
        }
    }
    
    @IBAction func didTapCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
