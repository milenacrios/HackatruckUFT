//
//  ContentView.swift
//  Desafio01
//
//  Created by Student14 on 18/01/23.
//

import SwiftUI
struct ContentView: View {
    @State var name: String = ""
    @State var name2: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text(name2)
                .font(.title)
                .foregroundColor(.brown)
            Image("hackatruck")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text("HackaTruck")
                .bold()
                .foregroundColor(.blue)
                .font(.title)
            HStack {
                Text("Maker")
                    .foregroundColor(.yellow)
                    .font(.title2)
                Text("Space")
                    .foregroundColor(.pink)
                    .font(.title2)
            }
            Spacer()
            TextField(
                "Insira seu nome",
                text: $name
            )
            .textFieldStyle(.roundedBorder)
           Button("Entrar", action:
                    {name2 = name}).font(.caption2.bold()
                      
                    )
        }
        .padding()
    }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
