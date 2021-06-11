//
//  CurrentTimeViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

final class CurrentTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func alarmButtonDidTapped(_ sender: Any) {
        pushContainerVC("アラーム", 0)
    }
    
    @IBAction private func stopwatchButtonDidTapped(_ sender: Any) {
        pushContainerVC("ストップウォッチ", 1)

    }
    
    @IBAction private func timerButtonDidTapped(_ sender: Any) {
        pushContainerVC("タイマー", 2)
    }
    
    private func pushContainerVC(_ title: String, _ index: Int) {
        let containerVC = storyboard?.instantiateViewController(
            withIdentifier: "ContainerViewController"
        ) as! ContainerViewController
        containerVC.modalPresentationStyle = .fullScreen
        containerVC.navTitle = title
        containerVC.index = index
        self.navigationController?.pushViewController(containerVC, animated: true)
    }
    
}
