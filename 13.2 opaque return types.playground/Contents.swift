import Cocoa

protocol View {  }

func getRandomNumber() -> some Equatable {
    return Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    return Bool.random()
}

print(getRandomNumber() == getRandomNumber())
