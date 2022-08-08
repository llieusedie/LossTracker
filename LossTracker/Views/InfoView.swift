//
//  InfoView.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 07.08.2022.
//

import SwiftUI

struct InfoView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            VStack {
                Form {
                    Section {
                        Text("We are going through the most decisive historical event. Only our strength and your support decide how fast we wipe terrorists off the face of the earth.")
                            .font(.subheadline)
                        Text("Help us fight cavemen – Support Ukraine!🇺🇦")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                    }
                    
                    Section {
                        Link("United24", destination: URL(string: "https://u24.gov.ua/")!)
                        
                        Link("Come back Alive", destination: URL(string: "https://www.comebackalive.in.ua/donate")!)
                        
                        Link("Monobank", destination: URL(string: "https://uahelp.monobank.ua/")!)
                    } header: {
                        Text("Ways to support")
                            .font(.headline)
                    }
                    Section {
                        Link("Ministry of Defence of Ukraine", destination: (URL(string: viewModel.info.data.resource) ?? URL(string: "https://www.mil.gov.ua/en/"))!)
                    } header: {
                        Text("Source")
                            .font(.headline)
                    }
                    
                    Section {
                        Link ("RussianWarship.rip by WEBSPARK", destination: URL(string: "https://russianwarship.rip/")!)
                    } header: {
                        Text("Data API & Inspiration")
                            .font(.headline)
                    }
                }
                .navigationTitle("Loss Tracker")
                .navigationBarTitleDisplayMode(.large)
                .onAppear {
                    viewModel.fetchData()
                }
                Spacer()
                VStack {
                    Text("2022 - People of Ukraine").bold()
                }
                .padding(.bottom, -10)
            }
        }
    }
}



struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(viewModel: ViewModel())
    }
}
