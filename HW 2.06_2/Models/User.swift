struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "User",
             password: "123",
             person: Person.getPerson()
        )
        
    }
}


struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let job: String
    
    
    
    
    static func getPerson() -> Person{
        Person(name: "Рамиль",
               surname: "Хамидуллин",
               company: "Русагро",
               department: "Служба разработки программного обеспечения автоматизированных систем управления технологических процессов (АСУТП)",
               job: "Руководитель службы")
    }
}
