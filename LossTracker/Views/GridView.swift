//
//  GridView.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 05.08.2022.
//

import SwiftUI

struct GridView: View {
    let columns: [GridItem] = [GridItem(.flexible(maximum: 200)),
                               
                               GridItem(.flexible(maximum: 200))]
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 15) {
                    //Objects are divided in 2 groups because of the 10 objects per view limit:(
                    Group {
                        createIconFor(name: "tanks", icon: "tanks", stat: viewModel.info.data.stats.tanks, increase: viewModel.info.data.increase.tanks)
                        
                        createIconFor(name: "armoured fighting vehicles", icon: "armouredFightingVehicle", stat: viewModel.info.data.stats.armouredFightingVehicles, increase: viewModel.info.data.increase.armouredFightingVehicles)
                        
                        createIconFor(name: "artillery systems", icon: "artillerySystems", stat: viewModel.info.data.stats.artillerySystems, increase: viewModel.info.data.increase.artillerySystems)
                        
                        createIconFor(name: "MLRS", icon: "mlrs", stat: viewModel.info.data.stats.mlrs, increase: viewModel.info.data.increase.mlrs)
                        
                        createIconFor(name: "AA warfare systems", icon: "aaWarfareSystems", stat: viewModel.info.data.stats.aaWarfareSystems, increase: viewModel.info.data.increase.aaWarfareSystems)
                        
                        createIconFor(name: "planes", icon: "planes", stat: viewModel.info.data.stats.planes, increase: viewModel.info.data.increase.planes)
                        
                        createIconFor(name: "helicopters", icon: "helicopters", stat: viewModel.info.data.stats.helicopters, increase: viewModel.info.data.increase.helicopters)
                    }
                    
                    Group {
                        createIconFor(name: "warships", icon: "warships", stat: viewModel.info.data.stats.warships, increase: viewModel.info.data.increase.warships)
                        
                        createIconFor(name: "missiles", icon: "missiles", stat: viewModel.info.data.stats.missiles, increase: viewModel.info.data.increase.missiles)
                        
                        createIconFor(name: "UAV systems", icon: "UAVSystems", stat: viewModel.info.data.stats.UAVSystems, increase: viewModel.info.data.increase.UAVSystems)
                        
                        createIconFor(name: "special military equipment", icon: "specialMilitaryEquipment", stat: viewModel.info.data.stats.specialMilitaryEquipment, increase: viewModel.info.data.increase.specialMilitaryEquipment)
                        
                        createIconFor(name: "ATGM/SRBM systems", icon: "atgmSrbmSystems", stat: viewModel.info.data.stats.atgmSrbmSystems, increase: viewModel.info.data.increase.atgmSrbmSystems)
                        
                        createIconFor(name: "vehicles", icon: "vehicles", stat: viewModel.info.data.stats.vehicles, increase: viewModel.info.data.increase.vehicles)
                    }
                }
            }
        }
    }
    func createIconFor(name: String, icon: String, stat: Int, increase: Int) -> some View {
            VStack(spacing: 5) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                VStack {
                    if increase > 0  {
                    Text("\(stat) (+\(increase))")
                        .font(.system(size: 20)).bold()
                        .foregroundColor(.red)
                    } else {
                        Text("\(stat)")
                            .font(.system(size: 20)).bold()
                            .foregroundColor(.red)
                    }
                    Text(name)
                        .font(.system(size: 15)).bold()
                        .foregroundColor(.black)
                }
                .frame(width: 120, height: 60)
            }
        .frame(width: 150, height: 120)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(viewModel: ViewModel())
    }
}
