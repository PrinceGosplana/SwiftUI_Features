//
//  TransparentHomeView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.03.2024.
//

import SwiftUI

struct TransparentHomeView: View {
    /// View Properties
    @State private var activePic: String = "piggy"
    @State private var blurType: BlurType = .freeStyle
    
    var body: some View {
        GeometryReader {
            let safeArea = $0.safeAreaInsets
            
            ScrollView(.vertical) {
                VStack(spacing: 15) {
                    TransparentBlurView(removeAllFilters: true)
                        .blur(radius: 15, opaque: blurType == .clipped)
                        .padding([.horizontal, .top], -30)
                        .frame(height: 100 + safeArea.top)
                        .visualEffect { view, proxy in
                            /// Available from iOS 17 to read scroll offsets directly from SwiftUI view's
                            view
                                .offset(y: (proxy.bounds(of: .scrollView)?.minY ?? 0))
                        }
                    /// Placing it above all the views
                        .zIndex(1000)
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        GeometryReader {
                            let size = $0.size
                            
                            Image(activePic)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: size.width, height: size.height)
                                .clipShape(.rect(cornerRadius: 25))
                        }
                        .frame(height: 500)
                        
                        Text("Blur Type")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.top, 15)
                        
                        Picker("", selection: $blurType) {
                            ForEach(BlurType.allCases, id: \.self) { type in
                                Text(type.rawValue)
                                    .tag(type)
                            }
                        }
                        .pickerStyle(.segmented)
                    })
                    .padding(15)
                    .padding(.bottom, 500)
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

/// Blur State
enum BlurType: String, CaseIterable {
    case clipped = "Clipped"
    case freeStyle = "Free Style"
}

#Preview {
    TransparentBlurEffectView()
        .preferredColorScheme(.dark)
}
