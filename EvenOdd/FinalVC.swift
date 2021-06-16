//
//  FinalVC.swift
//  EvenOdd
//
//  Created by Nikunj on 6/16/21.
//

import UIKit

class FinalVC: UIViewController {
    
    var output = ""
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.backgroundColor = .systemFill
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myLabel)
        myLabel.text = result
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame = CGRect(x: 40, y: (view.height/2) - 30, width: view.width - 80, height: 60)
    }
}
