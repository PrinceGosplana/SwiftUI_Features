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
        DispatchQueue.main.async {
            if let backdropLayer = uiView.layer.sublayers?.first {
                
            }
        }
    }
}

#Preview {
    TransparentBlurView()
        .padding(15)
}
