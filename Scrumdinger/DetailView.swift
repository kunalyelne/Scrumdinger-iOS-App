//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Kunal Yelne on 02/11/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
