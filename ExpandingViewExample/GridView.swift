//
//  GridView.swift
//  DYPopoverViewExample
//
//  Created by Dominik Butz on 2/12/2020.
//  Copyright © 2020 Duoyun. All rights reserved.
//

import SwiftUI
import DYPopoverView

struct GridView: View {
 
    @State var data = (1...20).map { "Item \($0)" }

    var availableWidth: CGFloat

    var body: some View {
    
            NavigationView {
                ScrollView {
                    LazyVGrid(columns:  [GridItem(.adaptive(minimum: 160, maximum: 160))], alignment: .center, spacing: 20) {
                        ForEach(data, id:\.self) { item in
                            CellView(availableWidth: 150, item: item)
                        }
                    }.navigationBarTitle(Text("List"))
                }
            }.navigationViewStyle(StackNavigationViewStyle())

            
     }
        
    
}



struct CellView: View {
   var availableWidth: CGFloat
    var item: String
    @State var showPopover = false
    @State var popoverOriginFrame: CGRect? = .zero

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    self.showPopover.toggle()
                    
                } label: {
                    Image(systemName: "ellipsis.circle.fill").foregroundColor(.white)
                }.padding(6).anchorFrame(rect: $popoverOriginFrame)

            }
            Spacer()
            Text(item)
            Spacer()
        }.frame(width: availableWidth, height:100).background(RoundedRectangle(cornerRadius: 5).foregroundColor(.blue)).padding(.horizontal, 10)
        .popoverView(content: { Text("Content")}, background: { Color(.secondarySystemBackground).onTapGesture {
            showPopover.toggle()
        } }, isPresented: self.$showPopover, frame: .constant(CGRect(x:0, y:0, width: 200, height: 200)), anchorFrame: self.popoverOriginFrame, popoverType: .popout, position: .bottom, viewId: "3")
   
    }
  
}
