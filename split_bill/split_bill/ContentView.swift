//
//  ContentView.swift
//  split_bill
//
//  Created by William Chan on 2022-06-17.
//

import SwiftUI

struct ContentView: View {
    @State private var totalCost = ""
    @State private var people = 1
    @State private var tipIndex = 0
    let tipPercentages = [0,5,10,15]
    
    func calculateTotal() -> Double {
        let tip = Double(tipPercentages[tipIndex])
        let orderTotal = Double(totalCost) ?? 0
        
        let finalAmount = ((orderTotal / 100 * tip) + orderTotal)
        return finalAmount / Double(people)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter an amount")) {
                    TextField("Amount", text: $totalCost).keyboardType(.decimalPad)
                }
                Section(header: Text("Select a tip amount (%)")) {
                    Picker("Tip percentage", selection: $tipIndex){
                        ForEach(0 ..< tipPercentages.count, id: \.self) {
                            Text("\(tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("How many people?")) {
                    Picker("Number of people", selection: $people){
                        ForEach(0..<25){
                            Text("\($0) people")
                        }
                    }
                    
                }
                Section(header: Text("Total per person")) {
                    Text("$\(calculateTotal(), specifier: "%.2f")")
                }
            }.navigationTitle("Split the Bill")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
