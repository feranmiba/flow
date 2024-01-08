import SomeContract from 0x05

transaction() {

  prepare(acct: AuthAccount) {
    log(acct.address)
    log(SomeContract.structFunc)
  }

  execute {
  
  }
}
