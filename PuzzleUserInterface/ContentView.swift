//
//  ContentView.swift
//  PuzzleUserInterface
//
//  Created by Vincent He on 2020-10-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Section(header: Text("List of Puzzles")){
                        
                        NavigationLink(destination:RSANumber()){
                            Text("RSA Number")
                        }
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
