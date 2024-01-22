//
//  Wage.swift
//  WindowShopper
//
//  Created by Atharva Sakpal on 23/01/24.
//

import Foundation


class Wage{
    class func getHours(forWage wage:Double,andPrice price: Double)-> Int{
        //(forWage wage) --> (parameter name, variable name)
        return Int(ceil(price/wage))
    }
    //made a calss fuction getHours since then no need to create an object to acess function. directly use Wage.getHours
}
