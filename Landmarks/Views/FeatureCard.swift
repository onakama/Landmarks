//
//  FeatureCard.swift
//  Landmarks
//
//  Created by 住山大誠 on 2022/01/10.
//

import SwiftUI

struct FeatureCard: View {
    var landamark: Landmark
    
    var body: some View {
        landamark.featureImage?
            .resizable()
            .aspectRatio(3 / 3, contentMode: .fit)
            .overlay {
                TextOverlay(landmark: landamark)
            }
    }
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
            
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
            
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landamark: ModelData().landmarks[0])
    }
}
