import Cocoa

/*
 Make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses,
 then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

 But there’s more:
    - The Animal class should have a legs integer property that tracks how many legs the animal has.
    - The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
    - The Cat class should have a matching speak() method, again with each subclass printing something different.
    - The Cat class should have an isTame Boolean property, provided using an initializer.
*/

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("wof!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("waf")
    }
}

class Poodle: Dog {
    override func speak() {
        print("waw")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("meow")
    }
}

class Persian: Cat {
    override func speak() {
        print("meoww")
    }
}

class Lion: Cat {
    override func speak() {
        print("roar")
    }
}

let animal = Animal(legs: 4)

let dog = Dog(legs: 4)
dog.speak()
let corgi = Corgi(legs: 4)
corgi.speak()
let poodle = Poodle(legs: 4)
poodle.speak()

let cat = Cat(legs: 4, isTame: false)
cat.speak()
let persian = Persian(legs: 4, isTame: true)
persian.speak()
let lion = Lion(legs: 4, isTame: true)
lion.speak()
