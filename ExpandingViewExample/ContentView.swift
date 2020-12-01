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
    
    @State private var showSecondPopover = false
    @State private var showFirstPopover  = false
    @State private var showThirdPopover = false
    @State private var secondPopoverFrame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.75, height:150 )

    @State private var viewId: String = ""
    @State private  var popoverPosition: ViewPosition = .top
    
    var body: some View {
        GeometryReader {  proxy in
        NavigationView {
            
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
                     
            }
                .frame(width: proxy.size.width).background(Color(.systemBackground))
                .popoverView(content: {Text("Content")}, background: {BlurView(style: .systemChromeMaterial)}, isPresented: self.$showFirstPopover, frame: .constant(CGRect(x: 0, y: 0, width: 150, height: 150)), popoverType: .popout, position: self.popoverPosition, viewId: "0", settings: DYPopoverViewSettings(shadowRadius: 20))
                .popoverView(content: {ContentExample(frame: self.$secondPopoverFrame, show:self.$showSecondPopover)}, background: {Color(.secondarySystemBackground)}, isPresented: self.$showSecondPopover, frame: self.$secondPopoverFrame, popoverType: .popover, position: self.popoverPosition, viewId: "1", settings: DYPopoverViewSettings(cornerRadius: (30, 30, 30, 30)))
                .navigationBarItems(leading: Button("Pop"){self.showThirdPopover.toggle()}.anchorView(viewId: "3") )
                .navigationTitle(Text("Test"))
        }
    }.popoverView(content: { Text("Content")
    }, background: { Color(.secondarySystemBackground).onTapGesture {
        self.showThirdPopover = false
    } }, isPresented: self.$showThirdPopover, frame: .constant(CGRect(x:0, y:0, width: 200, height: 200)), popoverType: .popout, position: .bottomRight, viewId: "3")
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
