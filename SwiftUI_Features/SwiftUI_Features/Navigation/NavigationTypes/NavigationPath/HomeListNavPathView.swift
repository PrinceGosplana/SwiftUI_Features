//
//  HomeListNavPathView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct HomeListNavPathView: View {
    @State private var navPath = NavigationPath()
    private var roomsInfo = [RoomInfo]()
    private var paintsInfo = [PaintInfo]()

    init(rooms: [RoomInfo], paints: [PaintInfo]) {
        self.roomsInfo = rooms
        self.paintsInfo = paints

        roomsInfo.forEach { navPath.append($0) }
    }

    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()

            NavigationStack(path: $navPath) {
                List(roomsInfo) { room in
                    NavigationLink(room.name, value: room)
                }

                Button("Show Art Paints") {
                    navPath.append(paintsInfo)
                }
                .frame(height: 100)
                .navigationTitle("House")

                .navigationDestination(for: RoomInfo.self) { room in
                    RoomDetail(roomInfo: room)
                }
                .navigationDestination(for: [PaintInfo].self) { paints in
                    List(paints) { paint in
                        VStack {
                            Text(paint.name)
                                .font(.system(size: 18, weight: .bold))
                            Text("_\(paint.author)_")
                        }
                    }
                }
            }

        }

    }
}

#Preview {
    HomeListNavPathView(rooms: RoomInfo.rooms, paints: PaintInfo.mockPaint)
}
