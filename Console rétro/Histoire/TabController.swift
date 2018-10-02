//
//  TabController.swift
//  Console rétro
//
//  Created by GONZALES David on 28/09/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class TabController: UITabBarController {
    
    var console: Console?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        if console != nil, viewControllers != nil {
            for controller in viewControllers! {
                if let un = controller as? DetailController {
                    un.console = console!
                }
                if let deux = controller as? HistoryController {
                    deux.console = console!
                }
                if let trois = controller as? JeuxController {
                    trois.console = console!
                }
            }
        }
    }
}
