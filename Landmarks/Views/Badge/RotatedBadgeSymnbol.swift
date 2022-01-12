//
//  RotatedBadgeSymnbol.swift
//  Landmarks
//
//  Created by 住山大誠 on 2022/01/08.
//

import SwiftUI

struct RotatedBadgeSymnbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymnbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymnbol(angle: Angle(degrees: 5))
    }
}
