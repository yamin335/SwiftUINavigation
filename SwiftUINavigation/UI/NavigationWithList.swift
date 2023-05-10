//
//  NavigationWithList.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct NavigationWithList: View {
    var body: some View {
        NavigationStack {
            List(1..<5) { i in
                NavigationLink(destination: Text("Destination -- \(i)")) {
                    Label("Navigation Link -- \(i)", systemImage: "\(i).circle")
                }
            }
        }
    }
}

struct NavigationWithList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationWithList()
    }
}
