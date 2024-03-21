//
//  ContentView.swift
//  calculadora
//
//  Created by Ruben on 20/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader { proxy in
                VStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text(viewModel.textFieldValue)
                                .foregroundStyle(.white)
                                .font(.system(size: 100, weight: .regular))
                                .frame(height: 100)
                                .padding(.trailing, 20)
                        }
                    }
                    VerticalButtonStack(viewModel: viewModel,
                                        data: Matrix.firstSectionData,
                                        columns: Matrix.firstSectionGrid(proxy.size.width * 0.25),
                                        width: proxy.size.width)
                    VerticalButtonStack(viewModel: viewModel,
                                        data: Matrix.secondSectionData,
                                        columns: Matrix.secondSectionGrid(proxy.size.width * 0.25),
                                        width: proxy.size.width)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
