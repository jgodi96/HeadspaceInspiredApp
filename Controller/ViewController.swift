//
//  ViewController.swift
//  CalmStoryTime
//
//  Created by Joshua Godinez on 6/13/20.
//  Copyright © 2020 Joshua Godinez. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
  
    
    var storybrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        

    }

    @IBAction func ChoiceClicked(_ sender: UIButton) {
        storybrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    func updateUI(){
        storyLabel.text = storybrain.getStoryTitle()
        choice1Button.setTitle(storybrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storybrain.getChoice2(), for: .normal)
    }
    
}

