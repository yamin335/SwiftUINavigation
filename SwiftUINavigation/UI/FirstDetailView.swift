//
//  FirstDetailView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct FirstDetailView: View {
    var body: some View {
        VStack {
            Text("First detail view")
            
            NavigationLink(destination: SecondDetailView()) {
                MenuButton(label: "Go to second detail view")
            }
            .padding()
        }
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView()
    }
}
