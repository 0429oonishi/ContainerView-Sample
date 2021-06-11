//
//  ContainerViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

final class ContainerViewController: UIViewController {
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var alarmContainer: UIView!
    @IBOutlet private weak var stopwatchContainer: UIView!
    @IBOutlet private weak var timerContainer: UIView!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    
    private var containers = [UIView]()
    var navTitle: String = ""
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex = index
        
        self.navigationItem.title = navTitle
        
        containers.append(alarmContainer)
        containers.append(stopwatchContainer)
        containers.append(timerContainer)
        containerView.bringSubviewToFront(containers[index])
        
    }
    
    @IBAction private func segmentDidTapped(_ sender: UISegmentedControl) {
        let currentContainerView = containers[sender.selectedSegmentIndex]
        containerView.bringSubviewToFront(currentContainerView)
    }
    
    @IBAction func backButtonDidTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
