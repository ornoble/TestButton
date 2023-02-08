//
//  ViewController.swift
//  TestButton
//
//  Created by Lee, Oliver - Student on 2/8/23.
//

import UIKit

enum SnowActivity { case skiing, snowboarding, snowBlallFight }

enum Choice { case red, green, blue }
class ViewController: UIViewController {

    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redButton.addTarget(self, action: #selector(buttonPressed(button:)),for: .touchUpInside)
        greenButton.addTarget(self, action: #selector(buttonPressed(button:)),for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(buttonPressed(button:)),for: .touchUpInside)
    }
    @objc func buttonPressed(button: UIButton) {
        print("Button pressed")
        
        if button == redButton{
            view.backgroundColor = UIColor(red: 0.92, green: 0.3, blue: 0.203, alpha: 1)
        } else if button==greenButton {
            view.backgroundColor = UIColor(red: 0, green: 0.5, blue: 0, alpha: 1)
        } else {
            view.backgroundColor = UIColor(red: 0.5, green: 0.52, blue: 0.6, alpha: 1)
        }
    }

}

