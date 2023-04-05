import MyContract from 0x01

transaction (_name : String, _age: UInt32, _sex: String) {

  prepare(acct: AuthAccount) {}

  execute {
    MyContract.addID(_name: _name, _age: _age, _sex:_sex)
  }
}