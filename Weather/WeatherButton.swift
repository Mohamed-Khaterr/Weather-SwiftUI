//
//  WeatherButton.swift
//  Weather
//
//  Created by Epic_Sys on 29/03/2024.
//

import SwiftUI

struct WeatherButton: View {
    let title: String
    let tapped: () -> Void
    
    var body: some View {
        Button {
            tapped()
        } label: {
            Text(title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .frame(width: 280, height: 50)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    WeatherButton(title: "Test") {
        
    }
}
