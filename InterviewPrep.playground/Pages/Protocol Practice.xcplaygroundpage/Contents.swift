//: [Previous](@previous)

import Foundation

protocol FeedDelegate{
    func refillWaterBowl()
}


struct Owner: FeedDelegate{
    func refillWaterBowl(){
        print("Bowl is filled with water yay")
    }
}

var noah = Owner()


struct Pet{
    var delegate: FeedDelegate? // delegating the task
}

var musia = Pet()
musia.delegate = noah
musia.delegate?.refillWaterBowl()
