//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Jeremy Kim on 3/27/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        VStack {

            Text("Mon")
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("High: 70")

            Text("Low: 50")

        }

        .padding()

    }

}

#Preview {
    ContentView()
}
