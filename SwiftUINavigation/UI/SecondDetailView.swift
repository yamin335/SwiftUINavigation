//
//  SecondDetailView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct SecondDetailView: View {
    var body: some View {
        VStack {
            Text("Second detail view")
            
            NavigationLink(destination: ThirdDetailView()) {
                MenuButton(label: "Go to third detail view")
            }.padding()
        }
    }
}

struct SecondDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SecondDetailView()
    }
}
