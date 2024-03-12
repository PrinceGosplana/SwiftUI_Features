//
//  Home.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.03.2024.
//

import SwiftUI

struct Home: View {
    /// View properties
    @State private var intros: [Intro] = sampleIntros
    @State private var activeIntro: Intro?
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            VStack(spacing: 0) {
                if let activeIntro {
                    Rectangle()
                        .fill(activeIntro.bgColor)
                    /// Cirecle and text
                        .overlay {
                            Circle()
                                .fill(activeIntro.circleColor)
                                .frame(width: 35, height: 35)
                                .background {
                                    Text(activeIntro.text)
                                        .font(.largeTitle)
                                }
                        }
                }
            }
            .ignoresSafeArea()
        }
        .task {
            if activeIntro == nil {
                activeIntro = sampleIntros.first
            }
        }
    }
}

#Preview {
    ContentView()
}
