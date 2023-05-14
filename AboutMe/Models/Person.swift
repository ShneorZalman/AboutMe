//
//  Person.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 15/05/2023.
//

struct Person {
    let name: String
    let age: Int
    let familyRole: FamilyRole
    let description: String
    let fanFact: String
    
    
    static func getInfo() -> [Person] {
        [
            Person(name: "Zalman", age: 28, familyRole: .father , description: "bla", fanFact: "vay"),
            Person(name: "Ester", age: 27, familyRole: .mother , description: "la", fanFact: "lala"),
            Person(name: "levi", age: 2, familyRole: .son , description: "mai", fanFact: "maimai")
        ]
    }

enum FamilyRole {
    case father
    case mother
    case son
}

    
}
