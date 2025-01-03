//
//  ToolbarPrincipalPlacement.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct ToolbarPrincipalPlacement: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                //            You can add views to the navigation title bar using the ToolbarItem with a placement of "principal."
            }
            .font(.title)
            .navigationTitle("Nav Bar Title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack(spacing: 0) {
                        Text("My List")
                            .bold()
                        Button(action: {}, label: {
                            Text("Scroll to Top")
                            Image(systemName: "chevron.up")
                            //        Use the principal placement to put the view in the center of the nav bar.
                        })
                    }
                }
            }
            .tint(.green)
        }
    }
}

#Preview {
    ToolbarPrincipalPlacement()
}
