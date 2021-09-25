//
//  ContentView.swift
//  iDine
//
//  Created by Vedant Mistry on 25/09/21.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){ item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Menu App")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
