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
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            LocationButton(.currentLocation) {
                print("Location requested...")
            }
        }
    }
}

#Preview {
    UserLocationView()
}

fileprivate class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {

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

        print(location)
    }
}
