//
//  ViewController.swift
//  MVP
//
//  Created by yangjs on 2022/11/08.
//

import UIKit
protocol GreetingView : class{
    func setGreeting(greeting: String)
}
class ViewController: UIViewController ,GreetingView{
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var showGreetingButton: UIButton!
    var presenter : GreetingViewPresenter?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter = GreetingPresenter(view: self, person: Person(firstName: "YANG", lastName: "JOONSOO"))
     
    }

    @IBAction func didTapButton(_ sender: Any) {
        self.presenter?.showGreeting()
    }
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
}

