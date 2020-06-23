//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Montana  on 6/20/20.
//  Copyright © 2020 Montana Braswell. All rights reserved.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue

        // Do any additional setup after loading the view.
    }
    
}
