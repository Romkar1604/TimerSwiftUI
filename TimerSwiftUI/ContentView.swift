//
//  ContentView.swift
//  TimerSwiftUI
//
//  Created by Omkar Ranawade on 2/23/26.
//

import SwiftUI

struct ContentView: View {
    
    // 1 to 100 numbers
    let numbers = Array(1...100)

    // 5 columns
    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 5)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(numbers, id: \.self) { num in
                    NumberCell(number: num)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
