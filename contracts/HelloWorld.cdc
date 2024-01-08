access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        pub(set) var a: String  //Readable and writeable everywhere.

        pub var b: String  //Readable everywhere. and writeable(current and inner).

        access(contract) var c: String  //  Readable and writeable within the contract (SomeContract).

        access(self) var d: String   //Readable and writeable within the Struct 

        //
        // 3 Functions
        //

        pub fun publicFunc() {}

        access(contract) fun contractFunc() {}

        access(self) fun privateFunc() {}


        pub fun structFunc() {

        //Read access to testStruct.a, testStruct.b, testStruct.c, testStruct.d.
            // Write access to testStruct.a, testStruct.b, testStruct.c, testStruct.d

            //Example of Read access
        let A = self.a 
        let b = self.b

         // Example: Writing to writable variables
        self.a = "NewValueA"
        self.b = "NewValueB"
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
           // Read access to SomeResource.e.
           //Write access to SomeResource.e.
           // Example: Reading and writing to resource variables
        let eValue = self.e
        self.e = eValue + 1
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
     // Example: Accessing functions within the struct
    self.testStruct.structFunc()
    self.testStruct.publicFunc()
      // Example: Writing to writable variables in the contract
    self.testStruct.a = "NewValueA"
    // Example of reading 
     let re =  self.testStruct.b 
     let rel =   self.testStruct.c
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
