//
//  ContainerViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = text
        
    }
    
}
