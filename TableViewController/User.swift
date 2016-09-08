//
//  User.swift
//  TableViewController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 MelissaTreviño. All rights reserved.
//

import UIKit

class User: NSObject {
    var name : String = ""
    var score : Int = 0
    var email : String = ""
    
    init(nameN : String, scoreN : Int, emailN : String)
    {
        name = nameN
        score = scoreN
        email = emailN
    }
}
