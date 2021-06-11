//
//  BlueViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

final class BlueViewController: UIViewController {
    
    weak var delegate: ContainerViewDelegate?

    @IBAction private func inputButtonDidTapped(_ sender: Any) {
        delegate?.input("BBBBB")
    }
    
}
