//
//  ContentView.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 17.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Background()
                VStack {
                    HStack {
                        PersonnelView(viewModel: viewModel)
                            .padding(.leading)
                        Spacer()
                    }
                    GridView(viewModel: viewModel)
                }
            }
            .onAppear {
                viewModel.fetchData()
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        InfoView(viewModel: ViewModel())
                    } label: {
                        Image(systemName: "info.circle")
                    }
                }
            }
            .navigationTitle("Day \(viewModel.info.data.day)")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

