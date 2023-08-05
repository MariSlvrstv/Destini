//
//  ViewController.swift
//  Destini
//
//  Created by Мария Селиверстова on 05.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
       
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStory()
        choiceOne.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
    }





