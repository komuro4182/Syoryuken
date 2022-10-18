//
//  ViewController.swift
//  Syoryuken
//
//  Created by 小室　亮太 on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {
    var imageArraySyoryuken : Array<UIImage> = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        while let syoryukenImageView = UIImage(named: "attak\(imageArraySyoryuken.count+1)") {
                    imageArraySyoryuken.append(syoryukenImageView)
            
                }
            
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var syoryukenImageView: UIImageView!
    
    
    
    @IBAction func btn(_ sender: Any) {
        syoryukenImageView.animationImages = imageArraySyoryuken
               syoryukenImageView.animationDuration = 1.5
        syoryukenImageView.animationRepeatCount = 1
        syoryukenImageView.startAnimating()
           }


}
