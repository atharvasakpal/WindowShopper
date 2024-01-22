//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Atharva Sakpal on 22/01/24.
//

import UIKit

@IBDesignable //to see the changes done programatically in the main storyboard as well
class CurrencyTextField: UITextField {

    
    
    
    //override func prepareForInterfaceBuilder() {
        //customizeView()
    //}
    
    override func awakeFromNib() {
        //awakeFromNib -Prepares the receiver for service after it has been loaded from an Interface Builder archive, or nib file.
        super.awakeFromNib()
        //customizeView()
        
        
            backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0 , alpha: 0.25) //white,  alpha ~~ opacity
            
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if placeholder == nil{
                placeholder  = " "
            }
            
            if let p = placeholder{
                
                let place = NSAttributedString(string: p, attributes: [.foregroundColor:UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0 , alpha: 1.0)])
                
                attributedPlaceholder = place
                textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0 , alpha: 1.0) //white
                
                //NSAttributedString - An NSAttributedString object manages character strings and associated sets of attributes (for example, font and kerning) that apply to individual characters or ranges of characters in the string. An association of characters and their attributes is called an attributed string. The cluster’s two public classes, NSAttributedString and NSMutableAttributedString, declare the programmatic interface for read-only attributed strings and modifiable attributed strings, respectively.
            }
        
        
        
        
    }
    
    

}
