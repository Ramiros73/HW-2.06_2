//
//  User.swift
//  HW 2.06_2
//
//  Created by Рамиль Хамидуллин on 13.07.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(userName: "1",
              password: "1",
              person: Person.getPerson()
        )
        
    }
}


struct Person {
    let name: String
    let surname: String
    let job: String
    
    
    
    static func getPerson() -> Person{
        Person(name: "Ramil", surname: "Khamidullin", job: "IT")
    }
}
