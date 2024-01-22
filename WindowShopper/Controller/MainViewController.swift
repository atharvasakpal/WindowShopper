//
//  ViewController.swift
//  WindowShopper
//
//  Created by Atharva Sakpal on 22/01/24.
//

import UIKit

class MainViewController: UIViewController {

   
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBAction func ClearButtonPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var wageTxt: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        clearButton.isHidden = true
        
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
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            // first if is to make sure the fields aren't empty
            if let wage  = Double(wageTxt), let price = Double(priceTxt){
                //checking if the string can be conveted to a Double
                view.endEditing(true) //stopping further keyboard editing
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                clearButton.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }


}

