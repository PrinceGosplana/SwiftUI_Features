//
//  ClippedView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ClippedView: View {
    var body: some View {
        HStack(spacing: 10) {
            VStack {
                Text("Before")
                Circle()
                    .fill(Color.orange)
                    .frame(width: 150, height: 150)
                    .offset(x: 20, y: 20)
                    .border(Color.red)
                
                //        Use the clipped modifier to cut off any part of a view’s content that goes outside of the frame.
            }
            VStack {
                Text("After")
                Circle()
                    .fill(Color.orange)
                    .frame(width: 150, height: 150)
                    .offset(x: 20, y: 20)
                    .border(Color.red)
                    .clipped()
            }
        }
        VStack(spacing: 40) {
                
                Image(.coffee)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 80)
                    .border(Color.red)
                
                Image(.coffee)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 80)
                    .border(Color.red)
                    .clipped()
            
        }
    }
}

#Preview {
    ClippedView()
}
