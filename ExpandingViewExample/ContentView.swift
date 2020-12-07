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

    var body: some View {

            PopoverPlayground()
                
             
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
