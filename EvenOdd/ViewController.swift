//
//  ViewController.swift
//  EvenOdd
//
//  Created by Nikunj on 6/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Even / Odd", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        return button
    }()

	@objc private func handleEvent() {
        let vc = CheckEvenOddVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }
}
