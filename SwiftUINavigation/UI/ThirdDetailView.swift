//
//  ThirdDetailView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct ThirdDetailView: View {
    var body: some View {
        VStack {
            Text("Third detail view")
            
            NavigationLink(destination: FourthDetailView()) {
                MenuButton(label: "Go to fourth detail view")
            }.padding()
        }
    }
}

struct ThirdDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdDetailView()
    }
}
