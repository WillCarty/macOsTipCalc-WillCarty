//
//  Interactive.swift
//  commandLineBase
//
//  Created by Will Carty on 10/10/16.
//  Copyright © 2016 Will Carty. All rights reserved.
//

import Foundation
class Interactive{
    private var done: Bool = false;
    private var currentInput:String = "q";
    private var io = IO()
    func go() {
        while !done{
            //ask user for input
            io.writeOutput( "\nInput?")
            currentInput = io.getInput()
            if currentInput == "q"{
                done = true
            }
            else{
                print("The input is: \(currentInput)")
            }
            
        }
        print("Exiting...")
        return
    }
}
