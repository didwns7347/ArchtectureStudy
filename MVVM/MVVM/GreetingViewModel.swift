//
//  GreetingViewModel.swift
//  MVVM
//
//  Created by yangjs on 2022/11/08.
//

import Foundation
protocol GreetingViewModelProtocol: class{
    var greeting: String? {get}
    var greetingDidChange:((GreetingViewModelProtocol)->())? {get set}
    init(person:Person)
    func showGreeting()
}
class GreetingViewModel: GreetingViewModelProtocol{
    let person:Person
    var greeting: String?{
        didSet{
            self.greetingDidChange?(self)
        }
    }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    required init(person: Person) {
        self.person = person
    }
    @objc func showGreeting() {
        self.greeting = "Hello \(self.person.firstName) \(self.person.lastName)"
    }
    
}
