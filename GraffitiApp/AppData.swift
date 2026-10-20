//
//  AppData.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import Foundation
import SwiftUI
import Observation

@Observable
class AppData{
    
    var backgroundGradient = LinearGradient(
        colors: [Color.cyan, Color.blue],
        startPoint: .top, endPoint: .bottom
    )
    
}
