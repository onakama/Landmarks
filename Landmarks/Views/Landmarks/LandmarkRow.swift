//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 住山大誠 on 2022/01/03.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var lamdmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: lamdmarks[0])
            LandmarkRow(landmark: lamdmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
