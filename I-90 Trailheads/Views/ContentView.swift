//
//  ContentView.swift
//  Shared
//
//  Created by Michael Peters on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .trailhead
    
    enum Tab {
        case trailhead
//        case alttrailhead
        case map
        case gps
        case about
    }
    
    var body: some View {
        TabView(selection: $selection){
            TrailheadList()
                .tabItem {
                    Label("Trailheads", systemImage: "sun.max.fill")
                }
//            AltTrailheadList()
//                .tabItem {
//                    Label("AltTrailheads", systemImage: "sun.max.fill")
//                }
            AllTrailheadsMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            GPSView()
                .tabItem{
                    Label("GPS", systemImage: "pin")
                }
            About()
                .tabItem {
                    Label("About", systemImage: "bubble.right.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
