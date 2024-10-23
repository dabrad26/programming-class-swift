//
//  ContentView.swift
//  Assignment4
//
//  Created by David Bradshaw on 10/13/24.
//
// Place pin on Home and annotation on work. Place red circle around airport of home area to avoid
//

import MapKit
import SwiftUI

var centralLocation = CLLocationCoordinate2D(latitude: 37.3303783831067, longitude: -121.86422532835941);
var homeLocation = CLLocationCoordinate2D(latitude: 37.38132114100699, longitude: -121.97243692238787);
var workLocation = CLLocationCoordinate2D(latitude: 37.196112487820685, longitude: -121.74842769187168);
var airportLocation = CLLocationCoordinate2D(latitude: 37.36511805933271, longitude: -121.91946536561487);

struct ContentView: View {
    var body: some View {
        Map(
            initialPosition: .camera(MapCamera(centerCoordinate: centralLocation, distance: 100000))
        ) {
            Marker("Home", coordinate: homeLocation).tint(Color.purple)
            MapCircle(center: airportLocation, radius: 3500).foregroundStyle(Color.red.opacity(0.3))
            Annotation("Work", coordinate: workLocation) {
                Image(systemName: "briefcase.circle.fill").font(.system(size: 30)).foregroundStyle(Color.blue)
            }
        }
        .mapControls {
            MapCompass()
            MapScaleView()
        }
    }
}

#Preview {
    ContentView()
}
