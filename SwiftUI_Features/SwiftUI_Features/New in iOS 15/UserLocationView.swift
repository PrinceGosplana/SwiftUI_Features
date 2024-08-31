//
//  UserLocationView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.08.2024.
//

import CoreLocation
import CoreLocationUI
import MapKit
import SwiftUI

struct UserLocationView: View {

    @StateObject var locationManager = LocationManager()

    var body: some View {
        ZStack(alignment: .bottomTrailing) {

            Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
                .ignoresSafeArea()

            LocationButton(.currentLocation) {
                locationManager.manager.requestLocation()
            }
            .frame(width: 210, height: 50)
            .symbolVariant(.fill)
            .foregroundStyle(.white)
            .tint(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        }
    }
}

#Preview {
    UserLocationView()
}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {

    @Published var manager = CLLocationManager()
    // Region
    @Published var region: MKCoordinateRegion = .init()

    // Setting delegate
    override init() {
        super.init()
        manager.delegate = self
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last?.coordinate else { return }

        region = MKCoordinateRegion(center: location, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}
