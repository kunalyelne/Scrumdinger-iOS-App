//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Kunal Yelne on 11/02/24.
//

import SwiftUI

class ScrumStore: ObservableObject {
    
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("scrums.data")
    }
}
