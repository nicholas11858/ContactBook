//
//  Person.swift
//  ContactBook
//
//  Created by NIKOLAY OSIPOV on 08.06.2021.
//

struct Person {
    let firstName: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(surname)"
    }
    static func getPerson() -> [Person] {
        [
            Person(firstName: "Anjela",
                   surname: "Sikens",
                   email: "sangela@test.ru",
                   phone: "+1389893899"),
            Person(firstName: "John",
                   surname: "Milov",
                   email: "jmil@mr.ru",
                   phone: "+79243932932"),
            Person(firstName: "Dora",
                   surname: "Mora",
                   email: "mwkwo@ie.ru",
                   phone: "+73092039092")
        ]
    }
}
