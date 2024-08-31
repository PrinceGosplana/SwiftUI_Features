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

            Map(coordinateRegion: $locationManager.region, showsUserLocation: true, annotationItems: locationManager.coffeeShops, annotationContent: { shop in

                MapMarker(coordinate: shop.mapItem.placemark.coordinate, tint: .purple)

            })
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
        .overlay(alignment: .top) {
            Text("Coffee shop's")
                .font(.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.ultraThinMaterial)
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

    @Published var coffeeShops: [Shop] = []

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

        Task {
            await fetchCoffeeShops()
        }
    }

    // Sample location search asynk task
    func fetchCoffeeShops() async {
        do {
            let request = MKLocalSearch.Request()
            request.region = region
            request.naturalLanguageQuery = "Coffee Shops"

            let query = MKLocalSearch(request: request)

            let response = try await query.start()

            await MainActor.run {
                self.coffeeShops = response.mapItems.compactMap { item in
                    return Shop(mapItem: item)
                }
            }
        } catch {
            
        }
    }
}

struct Shop: Identifiable {
    var id = UUID().uuidString
    let mapItem: MKMapItem
}
