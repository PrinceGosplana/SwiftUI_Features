//
//  RoomListNavLinkView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct RoomListNavLinkView: View {
    private var rooms: [RoomInfo]

        init(rooms: [RoomInfo]) {
            self.rooms = rooms
        }

        var body: some View {
            NavigationStack {
                List(rooms) { room in
                    NavigationLink(room.name, value: room)
                }
                .navigationTitle("House Rooms")
                .navigationDestination(for: RoomInfo.self) { room in
                    RoomDetail(roomInfo: room)
                }
            }
        }    
}

#Preview {
    RoomListNavLinkView(
        rooms: RoomInfo.rooms
    )
}
