//
//  HapticFeedbackView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.03.2024.
//

import SwiftUI

//struct HapticFeedbackView: View {
//    @State private var feedback: Bool = false
//    
//    var body: some View {
//        Button("Send Haptic Feedback") {
//            feedback.toggle()
//        }
//        .sensoryFeedback(.warning, trigger: feedback)
//    }
//}

struct HapticFeedbackView: View {
    @State private var showAccessory = false


    var body: some View {
        if showAccessory == false {
            Button("Send Haptic Feedback") {
                showAccessory.toggle()
            }
        }
        
        if showAccessory {
            ContentUnavailableView("Feedback send", systemImage: "sun.horizon.fill")
        }
    }
}

#Preview {
    HapticFeedbackView()
}
