import Project from 0x07

transaction(model: Int, price: Int, owner: String, car_name: String, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
    Project.addCar(model: model, price: price, owner: owner, car_name: car_name, account: account)
    log("Project completed")
    }
}