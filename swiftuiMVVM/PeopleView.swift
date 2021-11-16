//
//  ContentView.swift
//  swiftuiMVVM
//
//  Created by Logan Koshenka on 10/23/21.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                    .frame(height: 80)
                    .padding(12)
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder() })
                Button("Shuffle", action: { viewModel.shuffleOrder() })
                Button("Remove last", action: { viewModel.removeLastPerson() })
                Button("Remove first", action: { viewModel.removeFirstPerson() })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
