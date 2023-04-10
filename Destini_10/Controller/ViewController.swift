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
    
    let storyBrain = StoryBrain()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.story[0].title
        choice1Buttom.setTitle(storyBrain.story[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[0].choice2, for: .normal)
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let story = storyBrain.story
        var storyNumber = storyBrain.storyNumber
        if userAnswer == story[storyNumber].choice1 {
            storyNumber += 1
            storyLabel.text = story[storyNumber].title
            choice1Buttom.setTitle(story[storyNumber].choice1, for: .normal)
            choice2Button.setTitle(story[storyNumber].choice2, for: .normal)
        } else if userAnswer == story[storyNumber].choice2  {
            storyNumber += 2
            storyLabel.text = story[storyNumber].title
            choice1Buttom.setTitle(story[storyNumber].choice1, for: .normal)
            choice2Button.setTitle(story[storyNumber].choice2, for: .normal)
        }
    }
}

