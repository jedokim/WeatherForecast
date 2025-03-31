//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Jeremy Kim on 3/27/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        HStack {
            DayForecast(day: "Mon", high: 70, low: 50, isRainy: false)
            
            DayForecast(day: "Tue", high: 60, low:40, isRainy: true)
        }

    }

}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("\(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("\(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        
        .padding()
    }
}
