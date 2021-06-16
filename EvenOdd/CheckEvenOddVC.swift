//
//  CheckEvenOddVC.swift
//  EvenOdd
//
//  Created by Nikunj on 6/16/21.
//

import UIKit

class CheckEvenOddVC: UIViewController {
    
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter The Number"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .systemFill
        return textField
    }()

    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.addTarget(self, action: #selector(check), for: .touchUpInside)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc private func check() {
        guard let num = Int(myTextField.text!) else {
            let alert = UIAlertController(title: "Oops!", message: "Wrong input. Please enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
            return
        }
        
        let check = FinalVC()
        
        if num % 2 == 0 {
            check.output = "This Is Even Number"
        } else {
            check.output = "This Is Odd Number"
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myTextField)
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myTextField.frame = CGRect(x: 40, y: (view.height/2) - 50, width: view.width - 80, height: 60)
        myButton.frame = CGRect(x: 40, y: myTextField.bottom+20, width: view.width - 80, height: 60)
    }
}
