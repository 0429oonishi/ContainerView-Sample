//
//  TopViewController.swift
//  ContainerView-sample
//
//  Created by 大西玲音 on 2021/06/11.
//

import UIKit

final class TopViewController: UIViewController {

    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var containerA: UIView!
    @IBOutlet private weak var containerB: UIView!
    @IBOutlet private weak var tableView: UITableView!
    
    private var containers = [UIView]()
    private var texts = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        containers.append(containerA)
        containers.append(containerB)
        containerView.bringSubviewToFront(containerA)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
            case "ASegueID":
                let redVC = segue.destination as! RedViewController
                redVC.delegate = self
            case "BSegueID":
                let blueVC = segue.destination as! BlueViewController
                blueVC.delegate = self
            default:
                fatalError()
        }
    }
    
    @IBAction private func segmentDidTapped(_ sender: UISegmentedControl) {
        let currentContainerView = containers[sender.selectedSegmentIndex]
        containerView.bringSubviewToFront(currentContainerView)
    }
    
}

extension TopViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        texts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = texts[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
        
}

extension TopViewController: ContainerViewDelegate {
    func input(_ text: String) {
        texts.append(text)
        tableView.reloadData()
    }
}
