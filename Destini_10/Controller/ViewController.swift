//
//  ViewController.swift
//  Destini_10
//
//  Created by Лариса Терегулова on 10.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Buttom: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.story[0].title
        settingsButton()
        stepChoice()
    }
    
    func settingsButton() {
        choice1Buttom.setTitle(storyBrain.story[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[0].choice2, for: .normal)
        choice1Buttom.titleLabel?.numberOfLines = 0
        choice2Button.titleLabel?.numberOfLines = 0
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        storyBrain.nextStory(userAnswer!)
        stepChoice()
        
        
    }
    
     func stepChoice() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Buttom.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: .normal)
    }
    
    
}

