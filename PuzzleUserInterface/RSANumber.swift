//
//  RSANumber.swift
//  PuzzleUserInterface
//
//  Created by Vincent He on 2020-10-19.
//

import SwiftUI

struct RSAcalculator{
    func numberOfRSA(lower:Int, upper:Int) -> String{
        guard let a = readLine() else{
            return "ERROR"
        }
        
        print("Enter upper limit of range")
        guard let b = readLine() else{
            return "ERROR"
        }
        
        guard let ba = Int(b) else{
            return "ERROR"
        }
        
        guard let aa = Int(a) else{
            return "ERROR"
        }
        
        if aa > ba{
            return "ERROR"
        }
                
        var rsa = [Int]()
        for i in aa...ba{
            // Making sure that the code does not kill itselef
            if i > 2{
                if 4 == divisorCount(of: i){
                    rsa.append(i)
                }
            }
        }
        return String(rsa.count)
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
    private var RSA = RSAcalculator()
    @State private var lower = "2"
    @State private var upper = "2"
    
    var body: some View {
        NavigationView{
        VStack{
            Form{
                Section(header:Text("User Input?")){
                    List{
                        TextField("LowerLimit?", text:$lower)
                        TextField("UpperLimit?", text:$upper)
                    }
                }
                Section(header:Text("Output")){
                    Text("The number of RSA numbers between \(lower) and \(upper)")
                }
            }
            
        }}
    }
}

struct RSANumber_Previews: PreviewProvider {
    static var previews: some View {
        RSANumber()
    }
}
