//
//  RoomDetail.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct RoomDetail: View {
    let roomInfo: RoomInfo

        var body: some View {
            VStack {
                roomInfo.image
                    .font(.system(size: 56))
                    .foregroundColor(.accentColor)
                Text(roomInfo.name)
                    .font(.system(size: 24))
            }
            .padding()
        }
}

#Preview {
    RoomDetail(roomInfo: RoomInfo.rooms[0])
}
