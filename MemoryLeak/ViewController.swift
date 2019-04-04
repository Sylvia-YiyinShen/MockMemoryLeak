//
//  ViewController.swift
//  MemoryLeak
//
//  Created by Zhihui Sun on 4/4/19.
//  Copyright © 2019 Sylvia Shen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapMakeLeakButton(_ sender: Any) {
        let leakViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LeakViewController")
        let navigationController = UINavigationController(rootViewController: leakViewController)
        present(navigationController, animated: true, completion: nil)
    }
}

