//
//  LandmarkList.swift
//  Landmark_Ex
//
//  Created by runnysun on 2022/11/10.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks, id:\.id){landmark in
                LandmarkRow(landmark: landmark)
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                .listStyle(.plain)
                .navigationTitle("Landmarks")
                .navigationBarTitleDisplayMode(.automatic)
            }
        }
    }
    
    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            LandmarkList()
        }
    }
}
