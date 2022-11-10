//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Obinna Aguwa on 09/11/2022.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        FrameworkTitleView(frameWork: frameWork)
                            .onTapGesture {
                                viewModel.selectedFramework = frameWork
                            }
                    }
                
                }
            }
            .navigationTitle("Apple Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

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
