//
//  LandmarkDetail.swift
//  Landmark_Ex
//
//  Created by runnysun on 2022/11/10.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View{
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
            InfoView(landmark: landmark)
            
        }
    }
}
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
