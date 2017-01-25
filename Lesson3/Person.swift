//
//  Person.swift
//  Lesson3
//
//  Created by Luis Esquivel on 2017-01-24.
//  Copyright © 2017 luis. All rights reserved.
//

import UIKit

class Person {
    
        // INSTANCE VARIABLES (FIELDS)
    var fullName: String!
    var age: Int!
    
    // Initializer
    init(fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
    }
    
}


class Professor: Person {

    //var person: Person = Person()
    
    override init(fullName: String, age: Int) {

        super.init(fullName: fullName, age: age)
        print(self.age)
        print(self.fullName)
    
    }
    
    func SaysHello() {
        print("\(self.fullName!) says hello!")
    }

}
