//
//  NavigationDetailsView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct NavigationDetailsView: View {
    
    let destinationNumber: Int
    
    var body: some View {
        NavigationLink(destination: NavigationDetailsView(destinationNumber: destinationNumber + 1)) {
            MenuButton(label: "Go to detail view no: \(destinationNumber + 1)")
        }.padding()
    }
}

struct NavigationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetailsView(destinationNumber: 0)
    }
}
