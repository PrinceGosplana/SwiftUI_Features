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
                                .frame(width: 38, height: 38)
                                .background(alignment: .leading, content: {
                                    Capsule()
                                        .fill(activeIntro.bgColor)
                                        .frame(width: size.width)
                                })
                                .background(alignment: .leading) {
                                    Text(activeIntro.text)
                                        .font(.largeTitle)
                                        .foregroundStyle(activeIntro.textColor)
                                        .frame(width: textSize(activeIntro.text))
                                        .offset(x: 10)
                                    /// Moving Text based on text Offset
                                        .offset(x: activeIntro.textOffset)
                                }
                            /// Moving Circle in the Opposite Direction
                                .offset(x: -activeIntro.circleOffset)
                        }
                }
                
                /// Login Buttons
                LoginButton()
                    .padding(.bottom, safeArea.bottom)
                    .padding(.top, 10)
                    .background(.black, in: .rect(topLeadingRadius: 25, topTrailingRadius: 25))
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 8)
            }
            .ignoresSafeArea()
        }
        .task {
            if activeIntro == nil {
                activeIntro = sampleIntros.first
                /// Delay 0.15s and Starting Animation
                let oneSecond = UInt64(1_000_000_000)
                try? await Task.sleep(nanoseconds: oneSecond * UInt64(0.15))
//                animate(0)
            }
        }
    }
    
    /// Login Buttons
    func LoginButton() -> some View {
        VStack(spacing: 12) {
            Button {
                
            } label: {
                Label("Continue With Apple", systemImage: "applelogo")
                    .foregroundColor(.black)
                    .fillButton(.white)
            }
            
            Button {
                
            } label: {
                Label("Continue With iPhone", systemImage: "phone.fill")
                    .foregroundColor(.white)
                    .fillButton(.button)
            }
            
            Button {
                
            } label: {
                Label("Sign in with email", systemImage: "envelope.fill")
                    .foregroundColor(.white)
                    .fillButton(.button)
            }
            
            Button {
                
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .fillButton(.black)
                    .shadow(color: .white, radius: 1)
            }
            
        }
        .padding(15)
    }
    
    /// Animating Intros
    func animate(_ index: Int, _ loop: Bool = true) {
        if intros.indices.contains(index + 1) {
            /// Updating Text and Text Color
            activeIntro?.text = intros[index].text
            activeIntro?.textColor = intros[index].textColor
            
            /// Animating Offsets
            withAnimation(.snappy(duration: 1), completionCriteria: .removed) {
                activeIntro?.textOffset = -(textSize(intros[index].text) + 20)
                activeIntro?.circleOffset = -(textSize(intros[index].text) + 20) / 2
            } completion: {
                /// Reseting the Offset with Next Slide Color Change
                withAnimation(.snappy(duration: 0.8), completionCriteria: .logicallyComplete) {
                    activeIntro?.textOffset = 0
                    activeIntro?.circleOffset = 0
                    activeIntro?.circleColor = intros[index + 1].circleColor
                    activeIntro?.bgColor = intros[index + 1].bgColor
                } completion: {
                    /// Going to Next Slide
                    animate(index + 1, loop)
                }
            }
        } else {
            /// Looping
            /// If looping Applied, ThenReset the Index to 0
            if loop {
                animate(0, loop)
            }
        }
    }
    
    /// Fetching text size based on fonts
    func textSize(_ text: String) -> CGFloat {
        NSString(string: text).size(withAttributes: [.font: UIFont.preferredFont(forTextStyle: .largeTitle)]).width
    }
}

#Preview {
    ContentView()
}

/// Custom Modifier
extension View {
    @ViewBuilder
    func fillButton(_ color: Color) -> some View {
        self
            .fontWeight(.bold)
            .frame(maxWidth:.infinity)
            .padding(.vertical, 15)
            .background(color, in: .rect(cornerRadius: 15))
    }
}
