//
//  ViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    private var containerViewController: ContainerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonDidTapped(_ sender: Any) {
        containerViewController?.label.text = textField.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let child = segue.destination as! ContainerViewController
            child.text = textField.text ?? "入力なし"
            containerViewController = child
        }
    }
}

