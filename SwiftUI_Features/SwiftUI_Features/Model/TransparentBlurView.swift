//
//  TransparentBlurView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.03.2024.
//

import SwiftUI

struct TransparentBlurView: UIViewRepresentable {
    var removeAllFilters: Bool = false
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.async {
            if let backdropLayer = uiView.layer.sublayers?.first {
                if removeAllFilters {
                    backdropLayer.filters = []
                } else {
                    /// Removing all expect blur filter
                    backdropLayer.filters?.removeAll(where: { filter in
                        String(describing: filter) != "gaussianBlur"
                    })
                }
            }
        }
    }
}

#Preview {
    TransparentBlurView()
        .padding(15)
}
