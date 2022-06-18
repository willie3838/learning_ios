//
//  ContentView.swift
//  increment_counter
//
//  Created by William Chan on 2022-06-17.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .padding().font(.system(size: 40, weight: .bold))
            Button(action: {
                self.count += 1
                print("Current tap: \(count)")
            }, label: {
                Text("Tap me")
                    .bold()
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(10)
        
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
