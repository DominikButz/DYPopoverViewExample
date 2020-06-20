@_private(sourceFile: "ContentView.swift") import DYPopoverView
import DYPopoverView
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 81)
        AnyView(ContentView().environment(\.colorScheme, .dark))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: customPopoverSettings1()) private func __preview__customPopoverSettings1()->DYPopoverViewSettings {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 70)
        
        var settings = DYPopoverViewSettings()
     //   settings.arrowLength = 0
        return settings
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: customPopoverSettings0()) private func __preview__customPopoverSettings0()->DYPopoverViewSettings {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 61)
        
        var settings = DYPopoverViewSettings()
        //settings.differentArrowPosition = .topLeft
        settings.shadowRadius = 20
      //  settings.offset = CGPoint(x: 220, y:0)
        return settings
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 22)
        AnyView(GeometryReader { proxy in
            VStack() {
            
                Spacer()
                
                Button(action: {
                   // self.viewId = "0"
                     //  self.showPopout.toggle()
                    self.showFirstPopover.toggle()
                       
                   }) {
                       TranslucentTextButtonView(title: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Popout"), foregroundColor: .red, backgroundColor: .red, frameWidth: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[3].value", fallback: 100))
                    }.anchorView(viewId:__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].value", fallback: "0"))
                
                           
                           
                Spacer()
                VStack {
                    HStack {
                        Button(action: {
                           // self.viewId = "1"
                            self.showSecondPopover.toggle()
                          }) {
                              TranslucentTextButtonView(title: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Popover "), foregroundColor: .accentColor, backgroundColor: .accentColor, frameWidth: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[3].value", fallback: 100))
                              
                        }
                         .anchorView(viewId:__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[0].value", fallback: "1"))
                    }
                }
                Spacer()
            }.frame(width: proxy.size.width).background(Color(.systemBackground))
                .popoverView(content: AnyView(Text(__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.arg[0].value.[0].value", fallback: "Content"))), isPresented: self.$showFirstPopover, frame: .constant(CGRect(x: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[0].value", fallback: 0), y: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[1].value", fallback: 0), width: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[2].value", fallback: 150), height: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[3].value", fallback: 150))), popoverType: .popout, position: .topLeft, viewId: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[5].value.[0].value", fallback: "0"), settings: self.customPopoverSettings0())
                .popoverView(content: AnyView(ContentExample(isExpanded:self.$showSecondPopover)), isPresented: self.$showSecondPopover, frame: .constant(CGRect(x: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[2].value.arg[0].value.arg[0].value", fallback: 0), y: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[2].value.arg[0].value.arg[1].value", fallback: 0), width: UIScreen.main.bounds.width * 0.75, height:UIScreen.main.bounds.height / 2 )), popoverType: .popover, position: .topRight, viewId: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[5].value.[0].value", fallback: "1"), settings: self.customPopoverSettings1())

        })
#sourceLocation()
    }
}

typealias ContentView = DYPopoverView.ContentView
typealias ContentView_Previews = DYPopoverView.ContentView_Previews