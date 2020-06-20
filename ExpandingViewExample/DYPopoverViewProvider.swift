//
//  ExpandingViewProvider.swift
//  ExpandingViewExample
//
//  Created by Dominik Butz on 30/11/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import Foundation
import SwiftUI

class DYPopoverViewProvider {


    func popoverView(_ geometry: GeometryProxy, _ preferences: [DYPopoverViewOriginPreference], content: AnyView, isExpanded: Binding<Bool>, expandedBounds: CGRect, viewId: String, settings: DYPopoverViewSettings = DYPopoverViewSettings()) -> some View {

         let originPreference = preferences.first(where: { $0.viewId == viewId })
        let originBounds = originPreference != nil ? geometry[originPreference!.bounds] : .zero
        
       return  content
        .frame(width: isExpanded.wrappedValue ? expandedBounds.width : originBounds.width, height: isExpanded.wrappedValue ? expandedBounds.height : originBounds.height)
        .opacity(isExpanded.wrappedValue ? 1 : 0)
            .fixedSize()
        .clipShape(RoundedRectangle(cornerRadius: settings.cornerRadius)).shadow(radius: settings.shadowRadius)
        .offset(x: isExpanded.wrappedValue ? expandedBounds.minX : originBounds.minX, y: isExpanded.wrappedValue ? expandedBounds.minY : originBounds.minY)
        .animation(settings.animation)
        
    }

    
}


public struct DYPopoverViewSettings {
    
    public var cornerRadius: CGFloat = 10
    public var shadowRadius: CGFloat = 10
    public var animation: Animation = .spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0.3)
     
}

public struct DYPopoverViewOriginBoundsPreferenceKey: PreferenceKey {
    public typealias Value = [DYPopoverViewOriginPreference]

    public static var defaultValue: [DYPopoverViewOriginPreference] = []
    
    public static func reduce(value: inout [DYPopoverViewOriginPreference], nextValue: () -> [DYPopoverViewOriginPreference]) {
        //value[0] = nextValue().first!
        value.append(contentsOf: nextValue())
    }
}

public struct DYPopoverViewOriginPreference  {
  
    public var viewId: String
    public var bounds: Anchor<CGRect>
}

