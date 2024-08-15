//
//  FrameWorkGridView.swift
//  Apple-Frameworks
//
//  Created by Abdullah Bin Essa on 8/15/24.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible())
                               ,GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitleView(framework: framework  )
                    }
                }.navigationTitle("FrameWorks")
            }
        }
    }
}
#Preview {
    FrameWorkGridView().preferredColorScheme(.dark)
}


struct FrameWorkTitleView: View {
    let framework: FrameWork
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
        
    }
}

