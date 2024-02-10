//
//  DetailEditSheetView.swift
//  Scrumdinger
//
//  Created by Kunal Yelne on 11/02/24.
//

import SwiftUI

struct DetailEditSheetView: View {
    
    @Binding var editScrum : DailyScrum
    @Binding var isPresentingEditView : Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editScrum)
            .navigationTitle(scrum.title)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresentingEditView = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        isPresentingEditView = false
                    }
                }
            }
        }
    }
}

#Preview {
    DetailEditSheetView(editScrum: .constant(DailyScrum.sampleData[0]), isPresentingEditView: .constant(true))
}
