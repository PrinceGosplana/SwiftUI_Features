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
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 15) {
                GeometryReader {
                    let size = $0.size
                    
                    Image(activePic)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: size.width, height: size.height)
                        .clipShape(.rect(cornerRadius: 25))
                }
                .frame(height: 500)
                .padding(15)
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    TransparenBlurEffectView()
}
