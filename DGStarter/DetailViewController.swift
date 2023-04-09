//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Saarth Chaturvedi on 1/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var character: Character?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let character = character{
            jerryImage.image = character.image
            jerryLabel.text = character.text
        }
    }
    
    
    @IBOutlet weak var jerryImage: UIImageView!
    @IBOutlet weak var jerryLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
