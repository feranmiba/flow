import Authentication from 0x06

pub fun main(account: Address): Authentication.Profile {
    return Authentication.profiles[account]!
}


