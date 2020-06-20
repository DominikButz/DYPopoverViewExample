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
    
    @State var showSecondPopover = false
    @State var showFirstPopover  = false
    @State var secondPopoverFrame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.75, height:150 )

    @State var viewId: String = ""
    @State var popoverPosition: ViewPosition = .bottom
    
    var body: some View {
        NavigationView {
            GeometryReader {  proxy in
                VStack(alignment: .center) {
           
                Spacer()
              
                Button(action: {

                    self.showFirstPopover.toggle()
                       
                   }) {
                       TranslucentTextButtonView(title: "Popout", foregroundColor: .red, backgroundColor: .red, frameWidth: 100)
                    }.anchorView(viewId:"0").padding()
                       
                
      
                    Button(action: {
                       // self.viewId = "1"
                        self.showSecondPopover.toggle()
                      }) {
                          TranslucentTextButtonView(title: "Popover", foregroundColor: .accentColor, backgroundColor: .accentColor, frameWidth: 100)
                          
                    }
                    .anchorView(viewId:"1").padding()
        
           
                
                    Spacer()
                
                    Picker("", selection: self.$popoverPosition) {
                        ForEach(0 ..< ViewPosition.allCases.count) {
                            Text(ViewPosition.allCases[$0].rawValue).tag(ViewPosition.allCases[$0])
                        }
                    }
                    
                
                
                
            }.frame(width: proxy.size.width).background(Color(.systemBackground))
                .popoverView(content: AnyView(Text("Content")), isPresented: self.$showFirstPopover, frame: .constant(CGRect(x: 0, y: 0, width: 150, height: 150)), popoverType: .popout, position: self.popoverPosition, viewId: "0", settings: self.customPopoverSettings0())
                .popoverView(content: AnyView(ContentExample(frame: self.$secondPopoverFrame, show:self.$showSecondPopover)), isPresented: self.$showSecondPopover, frame: self.$secondPopoverFrame, popoverType: .popover, position: self.popoverPosition, viewId: "1", settings: self.customPopoverSettings1())

         }
        }
    }
    
    func customPopoverSettings0()->DYPopoverViewSettings {
        
        var settings = DYPopoverViewSettings()
        //settings.differentArrowPosition = .topLeft
        settings.shadowRadius = 20
      //  settings.offset = CGPoint(x: 220, y:0)
        return settings
    }
    
    func customPopoverSettings1()->DYPopoverViewSettings {
        
        var settings = DYPopoverViewSettings()
        settings.cornerRadius = (30, 30, 30, 30)
      // settings.arrowLength = 50
        return settings
    }
}


//      return ExpandingView(content: AnyView(ContentView(isExpanded: self.isExpanded)), isExpanded: self.$isExpanded, originPreference: preferences.first!, expandedBounds: CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height - 40))

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
