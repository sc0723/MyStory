//
//  ViewController.swift
//  DGStarter
//
//  Created by Maribel Montejano on 12/13/22.
//

import UIKit

class GuesserViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    
    let wheres = Character(name:"Where Am I from?", image: UIImage(named: "whereIAmFrom")!, text: "I am from this beautiful hole in the wall. It is very comfortable.")
    let what = Character(name:"What do I like to do?", image: UIImage(named: "ratCheese")!, text: "I like to eat cheese in my free time.")
    let age = Character(name:"How old am I?", image: UIImage(named: "ratBday")!, text: "I am 4 years old!")
    
    
    
    
    


    // Array for storing Dinosaurs
    var characters: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        characters = [wheres,what,age]
        
        for character in characters {
            print(character)
        }

    }
    
    
    
    
    @IBAction func buttonTap(_ sender: UITapGestureRecognizer) {
        if let tappedview = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedview)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.character = characters[0]
            } else if tappedView.tag == 1 {
                detailViewController.character = characters[1]
            } else if tappedView.tag == 2 {
                detailViewController.character = characters[2]
            }
        }
    }
    
    
  
}

