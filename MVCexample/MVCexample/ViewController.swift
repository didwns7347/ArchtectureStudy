//
//  ViewController.swift
//  MVCexample
//
//  Created by yangjs on 2022/11/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showGreetingButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    var person:Person!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.person = Person(firstName: "YANG", lastName: "JOONSOO")
        // Do any additional setup after loading the view.
        self.showGreetingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc func didTapButton(){
        let greeting = "HELLO" + " " + self.person.firstName + " " + self.person.lastName
        self.greetingLabel.text = greeting
    }

}

