//
//  FrameworkGridViewModel .swift
//  Apple-Frameworks
//
//  Created by Obinna Aguwa on 10/11/2022.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
