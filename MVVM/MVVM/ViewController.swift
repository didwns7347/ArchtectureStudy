//
//  ViewController.swift
//  MVVM
//
//  Created by yangjs on 2022/11/08.
//

import UIKit
struct Person{
    let firstName:String
    let lastName:String
}
class ViewController: UIViewController {
    var viewModel: GreetingViewModelProtocol!{
        didSet{
            self.viewModel.greetingDidChange = {[unowned self] vm in
                self.greetingLabel.text = vm.greeting
            }
        }
    }
    @IBOutlet weak var showGreetingButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let model = Person(firstName: "YANG", lastName: "JOONSOO")
        viewModel = GreetingViewModel(person: model)
        self.showGreetingButton.addTarget(self, action: #selector(showGreeting), for: .touchUpInside)
    }
    @objc func showGreeting(){
        viewModel.showGreeting()
    }
}

