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
        ScrollView(.vertical) {
            VStack(spacing: 15) {
                TransparentBlurView(removeAllFilters: false)
                    .frame(height: 140)
                    .visualEffect { view, proxy in
                        /// Available from iOS 17 to read scroll offsets directly from SwiftUI view's
                        view
                            .offset(y: (proxy.bounds(of: .scrollView)?.minY ?? 0))
                    }
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
            }
        }
        .scrollIndicators(.hidden)
    }
}

/// Blur State
enum BlurType: String, CaseIterable {
    case clipped = "Clipped"
    case freeStyle = "Free Style"
}

#Preview {
    TransparenBlurEffectView()
}
