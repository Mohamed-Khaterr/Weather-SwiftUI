//
//  WeatherDayCell.swift
//  Weather
//
//  Created by Epic_Sys on 29/03/2024.
//

import SwiftUI

struct WeatherDayCell: View {
    let day: String
    let image: String
    let temperature: Int
    
    
    var body: some View {
        VStack {
            Text(day.uppercased())
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
        }
        .font(.title2)
    }
}

#Preview {
    WeatherDayCell(day: "wed", image: "cloud.sun.fill", temperature: 20)
}
