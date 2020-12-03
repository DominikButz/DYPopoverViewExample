//
//  ContentView.swift
//  ExpandingViewExample
//
//  Created by Dominik Butz on 30/11/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import DYPopoverView

struct ContentView: View {
    
    @State private var tabSelection: Int = 0

    var body: some View {
        GeometryReader { proxy in
               TabView(selection: self.$tabSelection) {
            
                PopoverPlayground().tabItem({
                    Image(systemName: "chevron.up.square.fill")
                    Text("Playground")
                }).tag(0)
                
                    GridView(availableWidth: proxy.size.width * 0.9)
                        .tabItem({
                            Image(systemName: "chevron.up.square.fill")
                            Text("Grid")
                        })
                    .tag(1)
                }
        }

    
   }
    
    
//    func customPopoverSettings0()->DYPopoverViewSettings {
//
//        var settings = DYPopoverViewSettings(shadowRadius: 20)
//        //settings.differentArrowPosition = .topLeft
//        settings.shadowRadius = 20
//      //  settings.offset = CGPoint(x: 220, y:0)
//        return settings
//    }
//
//    func customPopoverSettings1()->DYPopoverViewSettings {
//
//        var settings = DYPopoverViewSettings(cornerRadius: (30, 30, 30, 30))
//        settings.cornerRadius = (30, 30, 30, 30)
//      // settings.arrowLength = 50
//        return settings
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
