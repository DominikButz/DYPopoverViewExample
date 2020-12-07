//
//  ContentView.swift
//  ExpandingViewExample
//
//  Created by Dominik Butz on 30/11/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        PopoverPlayground()
   }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
