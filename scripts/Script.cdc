import MyContract from 0x01

pub fun main(_name : String): MyContract.ID {
  return MyContract.getID(_name: _name)
}