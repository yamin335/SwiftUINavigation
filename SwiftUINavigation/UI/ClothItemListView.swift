//
//  ClothItemListView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct ClothItemListView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Text("List of cloth Items")

            List(listOfCloths) { item in
                NavigationLink(value: item) {
                    Text("\(item.name)")
                }
            }
        }
    }
}

struct ClothItemListView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        ClothItemListView(path: $path)
    }
}
