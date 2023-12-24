pub contract Project {

        pub var motor: {Address: Car}


    pub struct Car {
        pub let model: Int
        pub let price: Int
        pub let owner: String
        pub let car_name: String
        pub let account: Address  


        init (_model: Int, _price: Int, _owner: String, _carName: String, _account: Address) {
        self.model = _model
        self.price = _price
        self.owner = _owner
        self.car_name = _carName
        self.account = _account
        }
    }

    pub fun addCar(model:Int, price: Int, owner: String, car_name: String, account:Address) {
    let newCar = Car(_model: model, _price:price, _owner: owner, _carName: car_name, _account: account) 
    self.motor[account] = newCar
    }

    init() {
    self.motor = {}
    }




}