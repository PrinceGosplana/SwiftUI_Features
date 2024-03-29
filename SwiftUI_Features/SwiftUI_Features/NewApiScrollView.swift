//
//  NewApiScrollView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.03.2024.
//

import SwiftUI

// paging where views show in center 
struct NewApiScrollView: View {
    var body: some View {
        GeometryReader{
            let size = $0.size
            
            ScrollView(.horizontal) {
                let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
                
                LazyHStack(spacing: 25) {
                    ForEach(colors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(color.gradient)
                            .frame(width: 300, height: 200)
                    }
                }
                .padding(.horizontal, (size.width - 300) / 2)
                /// step 1
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
        .frame(height: 200)
    }
}

#Preview {
    NewApiScrollView()
}

/*
// paging from left side
struct NewApiScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
            
            LazyHStack(spacing: 25) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(color.gradient)
                        .frame(width: 300, height: 200)
                }
            }
            .padding(.horizontal)
            /// step 1
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    NewApiScrollView()
}
*/

/*
// paging from the start
struct NewApiScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
            
            LazyHStack(spacing: 0) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(color.gradient)
                        .frame(height: 200)
                        .padding(.horizontal)
                        .containerRelativeFrame(.horizontal)
                }
            }
            /// step 1
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    NewApiScrollView()
}
*/
