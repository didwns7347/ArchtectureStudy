//
//  GreetingPresenter.swift
//  MVP
//
//  Created by yangjs on 2022/11/08.
//

import Foundation
protocol GreetingViewPresenter {
    init(view:GreetingView, person:Person)
    func showGreeting()
}
class GreetingPresenter: GreetingViewPresenter{
    let view : GreetingView
    let person: Person
    
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "HELLO \(person.firstName) \(person.lastName)"
        self.view.setGreeting(greeting: greeting)
    }
    
    
}
