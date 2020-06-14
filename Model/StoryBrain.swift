//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {

var storyNumber = 0

let stories = [
    Story(
        title: "You decide to leave the house and take a walk at night. There are two paths: one that will lead you to the beach and one that will take you a small hill. ",
        choice1: "Take the path up the hill", choice1Destination: 2,
        choice2: "Take the path towards the beach", choice2Destination: 1
    ),
    Story(
        title: "You feel the ocean breeze as you head towards the beach and can smell the salty waters as you approach. You glance at the ocean and see the stars light up the water. You stay for a bit and notice you are getting sleepy. You glance at the soft sand. ",
        choice1: "Head back home", choice1Destination:3,
        choice2: "Lay down for a bit", choice2Destination: 5
    ),
    Story(
        title: "You feel the calm winds as you head up the hill and see the stars light up the night. You make it to the top and notice you are getting sleepy. You glance at soft grass.",
        choice1: "Head back home", choice1Destination: 4,
        choice2: "Lay down for a bit", choice2Destination: 5
    ),
    Story(
        title: "You head back home and go straight to sleep. You dream about laying on the beach and wake up with sandy feet! You wonder if you were really in that dream but then remember you went to the beach yesterday.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story(
        title: "You head back home and go straight to sleep. You dream about laying on the grassy hill and wake up with mud on your feet! You wonder if you were really in that dream but then remember you went to the hill yesterday.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story(
        title: "You dream about being in your soft bed and wake up outside! You have mistaken the bed for the ground you were on. You are embarrassed as people look at you as you wake up. At least it was a good night's sleep  '",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    )
]

func getStoryTitle() -> String {
    return stories[storyNumber].title
}

func getChoice1() -> String {
    return stories[storyNumber].choice1
}

func getChoice2() -> String {
    return stories[storyNumber].choice2
}

mutating func nextStory(userChoice: String) {
    
    let currentStory = stories[storyNumber]
    if userChoice == currentStory.choice1 {
        storyNumber = currentStory.choice1Destination
    } else if userChoice == currentStory.choice2 {
        storyNumber = currentStory.choice2Destination
    }
}
}
