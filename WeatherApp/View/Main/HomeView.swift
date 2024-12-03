//
//  HomeView.swift
//  WeatherApp
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct HomeView: View {
    private var attributedString: AttributedString {
        var string: AttributedString = "10°" + "\n " + "Mostly Clear"
        
        if let temp = string.range(of: "10°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        return string
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            // MARK: - Background color
            Color.background
                .ignoresSafeArea()
            
            // MARK: - Background image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: - House image
            Image("House")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            // MARK: - Current weather
            VStack(spacing: -10) {
                Text("City")
                    .font(.largeTitle)
                    
                VStack {
//                    Text("10°")
//                        .font(.system(size: 96).weight(.thin))
//                        .foregroundStyle(.primary)
//                    +
//                    Text("\n ")
//                    +
//                    Text("Mostly Clear")
//                        .font(.title3.weight(.semibold))
//                        .foregroundStyle(.secondary)
                    Text(attributedString)
                        
                    Text("H:24° L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
    
    
}

#Preview {
    HomeView()
}
