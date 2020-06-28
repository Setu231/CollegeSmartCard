//
//  GameViewController.swift
//  College Smartcard
//
//  Created by Setu on 05/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    var activePlayer = 1 //cross
    var gameState = [0 , 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var gameIsActive = true
    
    @IBOutlet weak var label: UILabel!
    @IBAction func action(_ sender: AnyObject)
    {
        if (gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1) {
                
                sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                activePlayer = 2
            }
            else{
                sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                activePlayer = 1
            }
        }
        
        for combination in winningCombinations
        {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                
                gameIsActive = false
                playAgainButton.isHidden = false
                label.isHidden = false
                
                // Cross has won
                if gameState[combination[0]] == 1 {
                    print("Cross")
                    label.text = "CROSS HAS WON!"
                    return
                }
                    // Nought has won
                else {
                    print("Nought")
                    label.text = "NOUGHT HAS WON!"
                    return
                }
            }
            gameIsActive = false
            
            for i in gameState
            {
                if i == 0
                {
                    gameIsActive = true
                    break
                }
                
            }
            if gameIsActive == false
            {
                label.text = "IT WAS A DRAW"
                playAgainButton.isHidden = false
                label.isHidden = false
            }
            
        }
    }
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: Any)
    {
        gameState = [0 , 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

