//
//  TopViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerA: UIView!
    @IBOutlet weak var containerB: UIView!
    var containers = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containers.append(containerA)
        containers.append(containerB)
        containerView.bringSubviewToFront(containerA)
        
    }
    
    @IBAction func segmentDidTapped(_ sender: UISegmentedControl) {
        let currentContainerView = containers[sender.selectedSegmentIndex]
        containerView.bringSubviewToFront(currentContainerView)
    }
    
}
