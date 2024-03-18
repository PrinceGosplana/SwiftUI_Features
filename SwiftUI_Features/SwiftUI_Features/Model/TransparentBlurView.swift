//
//  TransparentBlurView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.03.2024.
//

import SwiftUI

struct TransparentBlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

#Preview {
    TransparentBlurView()
        .padding(15)
}
