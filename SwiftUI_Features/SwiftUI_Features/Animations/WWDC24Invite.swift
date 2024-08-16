//
//  WWDC24Invite.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

struct WWDC24Invite: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            Image(.wwdc24Invite)
                .resizable()
                .scaledToFit()
                .phaseAnimator([false, true]) { wwdc24, chromaRotate in
                    wwdc24
                        .hueRotation(.degrees(chromaRotate ? 420 : 0))
                } animation: { chromaRotate in
                        .easeInOut(duration: 2)
                }
        }
    }
}

#Preview {
    WWDC24Invite()
}
