//
//  IndiFrameWorkView.swift
//  Apple-Frameworks
//
//  Created by Abdullah Bin Essa on 8/15/24.
//

import SwiftUI


struct IndiFrameWorkView: View {
    var framework: FrameWork
    var body: some View {
        VStack{
            
            HStack{
                Spacer() 
                Button{
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44 )
                }
            }
            
            
            Spacer()
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                print("tapped")
            }label: {
                AFButton(title: "learn more", textColor: .white, backgroundColor: .red)
            }
            
            
        }
    }
}
#Preview {
    IndiFrameWorkView(framework: MockData.sampleFramework).preferredColorScheme(.dark)
}

