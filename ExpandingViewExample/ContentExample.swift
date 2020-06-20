//
//MinimizableView Example
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI


struct ContentExample: View {

    var listContent:[String] {
        var list: [String] = []
        for i in 0..<6 {
            list.append("Content \(i)")
        }
        return list
    }
    @State var expanded: Bool = false
    @Binding var frame: CGRect
    @Binding var show: Bool
    
    var height: CGFloat {
        return self.expanded ? 300 : 150
    }
    
    var body: some View {
        GeometryReader { proxy in

                VStack(alignment: .center, spacing: 5.0) {

                        HStack {
                                Spacer()
                                Button(action: {
                                    self.show = false
                                }) {
                                    Image(systemName: "xmark.circle").font(.system(size: 20)).foregroundColor(.secondary)
                                }.padding(.trailing, 8)
                    }.padding()
                
                        
                        List(self.listContent, id: \.self) { item in
                            Text(item).foregroundColor(.primary)
                        }.frame(width: proxy.size.width - 10).background(Color(.secondarySystemBackground))
                    
            
                          HStack(alignment: .bottom) {
                              
                              Spacer()
                              
                              // cancel button
                              Button(action: {
                                    self.show = false
                                      }) {
                                          VerticalSymbolTextButtonView(imageSystemName: "xmark.circle", title:"Abort", foregroundColor: .red, size: 25.0)
                    
                              }
                              
                              Spacer()
                                      // expand, compress  button
                                      Button(action: {
                                            self.expanded.toggle()
                                            
                                            self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.75, height:self.height)
                                        }) {

                                            VerticalSymbolTextButtonView(imageSystemName:  self.expanded ? "rectangle.compress.vertical" : "rectangle.expand.vertical", title: self.expanded ? "Compress": "Expand", foregroundColor: .accentColor, size: 25.0)
                                      }
                              

                                  Spacer()
                               
        
                              }
                          

                }.background(Color(.secondarySystemBackground))
                
        }
    }
}


struct ContentExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentExample(frame: .constant(CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.75, height:150 )), show: .constant(true))
    }
}


