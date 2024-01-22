//
//  ViewController.swift
//  WindowShopper
//
//  Created by Atharva Sakpal on 22/01/24.
//

import UIKit

class MainViewController: UIViewController {

   
    @IBOutlet weak var priceTxt: UITextField!
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //making a UIbutton manually (Calculate button)
        let calcBtn =  UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = UIColor(red: 255.0/255/0, green: 140.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        calcBtn.setTitle("Calculate", for: .normal) //always use setTitle instead of title
        calcBtn.setTitleColor(UIColor(red: 255.0/255/0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    
    @objc func calculate(){
        print("We got here")
    }


}

