//
//  PopoverPlayground.swift
//  DYPopoverViewExample
//
//  Created by Dominik Butz on 2/12/2020.
//  Copyright © 2020 Duoyun. All rights reserved.
//

import SwiftUI
import DYPopoverView

struct PopoverPlayground: View {
    
    @State private var showSecondPopover = false
    @State private var showFirstPopover  = false
    @State private var showNavPopover = false
    
    @State private var navBarPopoverOriginFrame: CGRect?
    @State private var firstPopoverOriginFrame:CGRect?
    @State private var secondPopoverFrame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.75, height:150 )
    @State private var secondPopoverOriginFrame:CGRect?

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
                    }.anchorFrame(rect: self.$firstPopoverOriginFrame).padding()
                           
                        Button(action: {
                           // self.viewId = "1"
                            self.showSecondPopover.toggle()
                          }) {
                            TranslucentTextButtonView(title: "Popover", foregroundColor: .accentColor, backgroundColor: .accentColor, frameWidth: 100).anchorFrame(rect: self.$secondPopoverOriginFrame)
                              
                        }


                        Spacer()
                    
                        Picker("", selection: self.$popoverPosition) {
                            ForEach(0 ..< ViewPosition.allCases.count) {
                                Text(ViewPosition.allCases[$0].rawValue).tag(ViewPosition.allCases[$0])
                            }
                        }
                         
                    }
                    .frame(width: proxy.size.width).background(Color(.systemBackground))

                    .navigationBarItems(trailing: self.navBarButton )
                    .navigationTitle(Text("Test"))
              }
            .popoverView(content: { Text("Content")}, background: { Color(.secondarySystemBackground).onTapGesture {
                self.showNavPopover = false
            } }, isPresented: self.$showNavPopover, frame: .constant(CGRect(x:0, y:0, width: 200, height: 200)), anchorFrame: self.navBarPopoverOriginFrame, popoverType: .popout, position: .bottomLeft, viewId: "3")
            .popoverView(content: {Text("Some content")}, background: {BlurView(style: .systemChromeMaterial)}, isPresented: self.$showFirstPopover, frame: .constant(CGRect(x: 0, y: 0, width: 150, height: 150)),  anchorFrame: self.firstPopoverOriginFrame, popoverType: .popout, position: self.popoverPosition, viewId: "0", settings: DYPopoverViewSettings(shadowRadius: 20))
            .popoverView(content: {ContentExample(frame: self.$secondPopoverFrame, show:self.$showSecondPopover)}, background: {Color(.secondarySystemBackground)}, isPresented: self.$showSecondPopover, frame: self.$secondPopoverFrame, anchorFrame: self.secondPopoverOriginFrame, popoverType: .popover, position: self.popoverPosition, viewId: "1", settings: DYPopoverViewSettings(cornerRadius: (30, 30, 30, 30)))
            
        }
    }
    
    var navBarButton: some View {
        Button(action: {
            self.showNavPopover.toggle()
        }, label: {
            Text("Pop")
        })
        .anchorFrame(rect: self.$navBarPopoverOriginFrame)
    }
}

struct PopoverPlayground_Previews: PreviewProvider {
    static var previews: some View {
        PopoverPlayground()
    }
}
