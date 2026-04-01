//
//  Untitled.swift
//  SiriExample
//
//  Created by Quanpeng Yang on 3/31/26.
//

import SwiftUI
import AppIntents

struct ShowMovie: AppIntent {
    static let title: LocalizedStringResource = "Show Movie"
    static let description = IntentDescription("Shows my favorite movie.")
    
    // Defines that the intent should open the app immediately
    static let supportedModes: IntentModes = .foreground(.immediate)
    
    @MainActor
    func perform() async throws -> some IntentResult {
        // Accessing your app's shared data model
        let appData = ApplicationData.shared
        appData.message = "Your favorite movie is Spider-Man!"
        
        return .result()
    }
}
