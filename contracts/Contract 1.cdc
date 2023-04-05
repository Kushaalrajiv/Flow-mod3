pub contract MyContract {
    pub struct ID {
        pub var name: String
        pub var age: UInt32
        pub var sex: String
        
        init (name : String, age: UInt32, sex:String) {
            self.name = name
            self.age = age
            self.sex = sex
        }
    }

    pub var people: {String: ID}
    
    init() {
        self.people = {}
    }

    pub fun addID(_name: String, _age: UInt32, _sex:String) {
        let id = ID(name: _name, age: _age, sex:_sex)
        self.people[_name] = id
    }
    
    pub fun getID(_name: String) : ID {
        return self.people[_name]!
    }
}