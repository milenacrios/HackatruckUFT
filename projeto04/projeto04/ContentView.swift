//
//  ContentView.swift
//  projeto04
//
//  Created by Student14 on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tabColor: Color!
    var body: some View {
        TabView {
                AmareloView()
                .tabItem {
                    Label ("Amarelo", systemImage: "square.and.pencil.circle.fill")
                } 
                RosaView()
                .tabItem{
//                    Label ("Rosa", systemImage: "square.and.pencil.circle.fill")
                }
                AzulView()
                .tabItem{
                    Label("Azul", systemImage: "square.and.pencil.circle.fill")
                }
                VerdeView()
                .tabItem{
                    Label("Verde", systemImage: "square.and.pencil.circle.fill")
                }
                
        } //.accentColor(.accentColor)
    }
}
fileprivate
let colors = [Color(.yellow)]


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
