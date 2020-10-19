//
//  RSANumber.swift
//  PuzzleUserInterface
//
//  Created by Vincent He on 2020-10-19.
//

import SwiftUI

struct RSAcalculator{
    func numberOfRSA() -> String{
        return "ERROR"
    }
    
    func divisorCount(of givenNumber: Int) -> Int {
        
        // 1 is always a divisor
        var divisorCount = 1
        
        // Start looping from 2
        for i in 2...givenNumber {
            
            // What is the remainder?
            let remainder = givenNumber % i
            
            // DEBUG output...
            //        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")
            
            // TODO: Add some code here... we need to keep track of how many divisors there are
            if remainder == 0 {
                divisorCount += 1
            }
            
        }
        
        // Return the count of divisors
        return divisorCount
        
    }
}

struct RSANumber: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Hello World")
            }
        }}
}

struct RSANumber_Previews: PreviewProvider {
    static var previews: some View {
        RSANumber()
    }
}
