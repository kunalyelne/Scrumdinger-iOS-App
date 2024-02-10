//
//  ScrumSheet.swift
//  Scrumdinger
//
//  Created by Kunal Yelne on 10/02/24.
//

import SwiftUI

struct NewScrumSheetView: View {
    
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var scrums: [DailyScrum]
    @Binding var isPresentingNewScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            scrums.append(newScrum)
                            isPresentingNewScrumView = false
                        }
                    }
            }
        }
    }
}

#Preview {
    NewScrumSheetView(scrums: .constant(DailyScrum.sampleData), isPresentingNewScrumView: .constant(true))
}
