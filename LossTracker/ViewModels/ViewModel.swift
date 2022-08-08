//
//  ViewModel.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 22.07.2022.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    //Creates placeholder values for each decoded object from JSON
    @Published var info = Losses(
        message: "message",
        data: Details(
            date: "date",
            day: 1,
            resource: "resourse",
            stats: Stats(
                personnel: 1,
                tanks: 1,
                armouredFightingVehicles: 1,
                artillerySystems: 1,
                mlrs: 1,
                aaWarfareSystems: 1,
                planes: 1,
                helicopters: 1,
                vehicles: 1,
                warships: 1,
                missiles: 1,
                UAVSystems: 1,
                specialMilitaryEquipment: 1,
                atgmSrbmSystems: 1),
            increase: Increase(
                personnel: 1,
                tanks: 1,
                armouredFightingVehicles: 1,
                artillerySystems: 1,
                mlrs: 1,
                aaWarfareSystems: 1,
                planes: 1,
                helicopters: 1,
                vehicles: 1,
                warships: 1,
                missiles: 1,
                UAVSystems: 1,
                specialMilitaryEquipment: 1,
                atgmSrbmSystems: 1
            )))
    
    
    func fetchData() {
        let urlString = "https://russianwarship.rip/api/v1/statistics/latest#"
        
        guard let url = URL(string: urlString) else {
            return print("missing a link")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            do {
                if let data = data {
                    let result = try decoder.decode(Losses.self, from: data)
                    DispatchQueue.main.async {
                        self.info = result
                    }
                } else {
                    print("NO DATA")
                }
            } catch(let error) {
                print("Whoopsie! There's an error: \(error)")
            }
        }.resume()
    }
}
