//
//  NumberCell.swift
//  TimerSwiftUI
//
//  Created by Omkar Ranawade on 2/23/26.
//


import SwiftUI

struct NumberCell: View {
    
    let number: Int
    
    var body: some View {
        Text("\(number)")
            .font(.headline)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, minHeight: 60)
            .background(getColor(number))
            .foregroundColor(.white)
            .cornerRadius(12)
    }
    
    func getColor(_ index: Int) -> Color {
        if index % 3 == 0 {
            return index % 5 == 0 ? .green : .orange
        }
        return index % 5 == 0 ? .red : .gray
    }
}
