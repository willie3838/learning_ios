//
//  ContentView.swift
//  BettertRest
//
//  Created by William Chan on 2022-06-20.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack{
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
