//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Abdullah Bin Essa on 8/15/24.
//

import Foundation
import SwiftUI

final class FrameWorkGridViewModel: ObservableObject{
    
    var selectedFramework: FrameWork?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
     
}
