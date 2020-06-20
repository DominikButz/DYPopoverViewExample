@_private(sourceFile: "ContentView.swift") import DYPopoverView
import DYPopoverView
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 81)
        AnyView(__designTimeSelection(ContentView().environment(\.colorScheme, .dark), "#9432.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: customPopoverSettings1()) private func __preview__customPopoverSettings1()->DYPopoverViewSettings {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 70)
        
        var settings = DYPopoverViewSettings()
     //   settings.arrowLength = 0
        return __designTimeSelection(settings, "#9432.[2].[6].[1]")
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
        return __designTimeSelection(settings, "#9432.[2].[5].[2]")
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/DYPopoverViewExample/ExpandingViewExample/ContentView.swift", line: 22)
        AnyView(__designTimeSelection(GeometryReader { proxy in
            __designTimeSelection(VStack() {
            
                __designTimeSelection(Spacer(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(Button(action: {
                   // self.viewId = "0"
                     //  self.showPopout.toggle()
                    __designTimeSelection(self.showFirstPopover.toggle(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                       
                   }) {
                       __designTimeSelection(TranslucentTextButtonView(title: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Popout"), foregroundColor: .red, backgroundColor: .red, frameWidth: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[3].value", fallback: 100)), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
                    }.anchorView(viewId:__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].value", fallback: "0")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                           
                           
                __designTimeSelection(Spacer(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                __designTimeSelection(VStack {
                    __designTimeSelection(HStack {
                        __designTimeSelection(Button(action: {
                           // self.viewId = "1"
                            __designTimeSelection(self.showSecondPopover.toggle(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                          }) {
                              __designTimeSelection(TranslucentTextButtonView(title: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Popover "), foregroundColor: .accentColor, backgroundColor: .accentColor, frameWidth: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[3].value", fallback: 100)), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                              
                        }
                         .anchorView(viewId:__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[0].value", fallback: "1")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0]")
                    }, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0]")
                }, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
                __designTimeSelection(Spacer(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[4]")
            }.frame(width: __designTimeSelection(proxy.size.width, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")).background(__designTimeSelection(Color(.systemBackground), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value"))
                .popoverView(content: __designTimeSelection(AnyView(__designTimeSelection(Text(__designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.arg[0].value.[0].value", fallback: "Content")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value"), isPresented: __designTimeSelection(self.$showFirstPopover, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value"), frame: .constant(__designTimeSelection(CGRect(x: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[0].value", fallback: 0), y: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[1].value", fallback: 0), width: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[2].value", fallback: 150), height: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value.arg[3].value", fallback: 150)), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.arg[0].value")), popoverType: .popout, position: .topLeft, viewId: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[5].value.[0].value", fallback: "0"), settings: __designTimeSelection(self.customPopoverSettings0(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[6].value"))
                .popoverView(content: __designTimeSelection(AnyView(__designTimeSelection(ContentExample(isExpanded:__designTimeSelection(self.$showSecondPopover, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value.arg[0].value")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value"), isPresented: __designTimeSelection(self.$showSecondPopover, "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[1].value"), frame: .constant(__designTimeSelection(CGRect(x: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[2].value.arg[0].value.arg[0].value", fallback: 0), y: __designTimeInteger("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[2].value.arg[0].value.arg[1].value", fallback: 0), width: UIScreen.main.bounds.width * 0.75, height:UIScreen.main.bounds.height / 2 ), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[2].value.arg[0].value")), popoverType: .popover, position: .topRight, viewId: __designTimeString("#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[5].value.[0].value", fallback: "1"), settings: __designTimeSelection(self.customPopoverSettings1(), "#9432.[2].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[6].value")), "#9432.[2].[4].property.[0].[0].arg[0].value.[0]")

        }, "#9432.[2].[4].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = DYPopoverView.ContentView
typealias ContentView_Previews = DYPopoverView.ContentView_Previews