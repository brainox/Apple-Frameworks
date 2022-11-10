//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Obinna Aguwa on 10/11/2022.
//

import SwiftUI

struct FrameworkTitleView: View {
    let frameWork: Framework
    
    var body: some View {
        VStack {
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider   {
    static var previews: some View {
        FrameworkTitleView(frameWork: MockData.sampleFramework)
    }
}
