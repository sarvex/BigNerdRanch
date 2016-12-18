//
//  ViewController.swift
//  Quiz
//
//  Created by Sarvex Jatasra on 18/12/2016.
//  Copyright © 2016 Sarvex Jatasra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var questionLabel : UILabel!
  @IBOutlet var answerLabel : UILabel!
  
  let questions: [String] = [
    "What is 7+7?",
    "What is the capital of Vermont?",
    "What is cognac made from?"
  ]
  
  let answers: [String] = [
    "14",
    "Montpelier",
    "Grapes"
  ]
  
  var currentQuestionIndex = 0
  
  
  @IBAction func showNextQuestion(_ sender: UIButton) {
    currentQuestionIndex = (currentQuestionIndex + 1 ) % questions.count
    questionLabel.text = questions[currentQuestionIndex]
    answerLabel.text = "???"
  }
  
  @IBAction func showAnswer(_ sender: UIButton) {
    answerLabel.text = answers[currentQuestionIndex]
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    questionLabel.text = questions[currentQuestionIndex]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

