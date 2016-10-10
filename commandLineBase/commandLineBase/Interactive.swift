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
        var totalBill: Double
        var partyTotal:Int
        var tipPercent:Double
        
        while !done{
            
            // get the input
            
            // eval input
            
            // if q then quit
            
            // else if t then calc tip
            
            // else if ? then do something else
            
            // else if h then print possible commands
            
            
            
            
            //ask user for input
            welcomeMenu()
            quitProgram()
            totalBill = fetchSubtotal()
            partyTotal = fetchParty()
            tipPercent = fetchTipAmount()
        
        //    if currentInput == "Excellent"
            if currentInput == "Q"{
                done = true
            }
         
            else{
                print("The input is: \(currentInput)")
            }
            
        }
        
        print("Exiting...")
        return
    }
    
    func fetchSubtotal() -> Double {
        var subtotal: Double?
        io.writeOutput( "\nWhat is your total Bill?")
        currentInput = io.getInput()
        
        subtotal = Double(currentInput)
        
        return subtotal ?? 0.0
    }
    
    func fetchParty() -> Int{
        var partyTotal: Int?
        io.writeOutput("\nHow many in your dinner party?")
        currentInput = io.getInput()
        partyTotal = Int(currentInput)
        return partyTotal ?? 0
        
    }
    func fetchTipAmount() ->Double{
        var tipAmount:Double = 0.0
     io.writeOutput("\n How was your service? \nPlease enter \nExcellent: for a 25% tip, \nGood: for a 20% tip, \nAverage: for a 15% tip and \nBad: for a 10% tip")
     currentInput = io.getInput()
        if currentInput == "Excellent"
        { tipAmount = 0.25
        
        }else if currentInput == "Good"{
            tipAmount = 0.20
        }else if currentInput == "Average"{
           tipAmount = 0.15
        }else if currentInput == "Bad"{
            tipAmount = 0.10
        }else{
            print("Please enter Excellent, Good, Average or Bad")
        }
        return tipAmount
    }
    
    func welcomeMenu()-> Int{
        var userSelection:Int = 0;
        io.writeOutput("Welcome to Tip Calculator Please Select from Options Below")
        io.writeOutput("----------------------------------------------------------")
        io.writeOutput("Press 1 to calculate tip")
        io.writeOutput("Press 2 for the help menu")
        io.writeOutput("Press 3 to Quit")
        currentInput = io.getInput()
        if currentInput == "1"{
            userSelection = 1
        }else if currentInput == "2"{
            helpMenu()
        }else if currentInput == "3"{
            userSelection = 3
        }else {
            print("Please select 1 through 3")
        }
        return userSelection
    }
    
    func helpMenu(){
        print("Welcome to the help menu. To use this calculator please move back to the main menu and press 1 for calculate tip. Follow the prompts. You can quit this application at any time by typing Q in the command line and hitting return. Thank you for using this application. Happy Dinning.")
        io.writeOutput("Enter B and press return to go back to the main menu")
        currentInput = io.getInput()
        if currentInput == "B"{
            welcomeMenu()
   
        }
    
    }
    
    func quitProgram(){
        if currentInput == "3"{
            print("Exiting Program")
            done = true
        }
    }
}
