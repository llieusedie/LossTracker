//
//  PersonnelView.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 05.08.2022.
//

import SwiftUI

struct PersonnelView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image("personnel")
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text("\(viewModel.info.data.stats.personnel) (+\(viewModel.info.data.increase.personnel))")
                        .font(.system(size: 30)).bold()
                        .foregroundColor(.red)
                    
                    Text("Personnel")
                        .font(.system(size: 20))
                        .bold()
                }
            }
            .frame(height: 70, alignment: .leading)
        }
        .onAppear(perform: viewModel.fetchData)
    }
}

struct PersonnelView_Previews: PreviewProvider {
    @ObservedObject var viewModel = ViewModel()
    static var previews: some View {
        PersonnelView(viewModel: ViewModel())
    }
}
