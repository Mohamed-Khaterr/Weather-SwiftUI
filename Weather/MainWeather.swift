//
//  MainWeather.swift
//  Weather
//
//  Created by Epic_Sys on 29/03/2024.
//

import SwiftUI

struct MainWeather: View {
    let temperature: Int
    let image: String
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
        }
    }
}


#Preview {
    MainWeather(temperature: 30, image: "cloud.sun.fill")
}
