//
//  Model.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 17.07.2022.
//

import Foundation
import SwiftUI

// MARK: - JSON Data structure
struct Losses: Codable {
    let message: String
    let data: Details
}

struct Details: Codable {
    let date: String
    let day: Int
    let resource: String
    let stats: Stats
    let increase: Increase
}

struct Stats: Codable {
    let personnel: Int
    let tanks: Int
    let armouredFightingVehicles: Int
    let artillerySystems: Int
    let mlrs: Int
    let aaWarfareSystems: Int
    let planes: Int
    let helicopters: Int
    let vehicles: Int
    let warships: Int
    let missiles: Int
    let UAVSystems: Int
    let specialMilitaryEquipment: Int
    let atgmSrbmSystems: Int
    
    enum CodingKeys: String, CodingKey {
        case personnel = "personnel_units"
        case tanks
        case armouredFightingVehicles = "armoured_fighting_vehicles"
        case artillerySystems = "artillery_systems"
        case mlrs
        case aaWarfareSystems = "aa_warfare_systems"
        case planes
        case helicopters
        case vehicles = "vehicles_fuel_tanks"
        case warships = "warships_cutters"
        case missiles = "cruise_missiles"
        case UAVSystems = "uav_systems"
        case specialMilitaryEquipment = "special_military_equip"
        case atgmSrbmSystems = "atgm_srbm_systems"
    }
}

struct Increase: Codable {
    let personnel: Int
    let tanks: Int
    let armouredFightingVehicles: Int
    let artillerySystems: Int
    let mlrs: Int
    let aaWarfareSystems: Int
    let planes: Int
    let helicopters: Int
    let vehicles: Int
    let warships: Int
    let missiles: Int
    let UAVSystems: Int
    let specialMilitaryEquipment: Int
    let atgmSrbmSystems: Int
    
    enum CodingKeys: String, CodingKey {
        case personnel = "personnel_units"
        case tanks
        case armouredFightingVehicles = "armoured_fighting_vehicles"
        case artillerySystems = "artillery_systems"
        case mlrs
        case aaWarfareSystems = "aa_warfare_systems"
        case planes
        case helicopters
        case vehicles = "vehicles_fuel_tanks"
        case warships = "warships_cutters"
        case missiles = "cruise_missiles"
        case UAVSystems = "uav_systems"
        case specialMilitaryEquipment = "special_military_equip"
        case atgmSrbmSystems = "atgm_srbm_systems"
    }
}


