//
//  ContentView.swift
//  projeto02
//
//  Created by Student14 on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var showingAlert: Bool = false
    var body: some View {
        ZStack{ //cria camadas e define a ordem das camadas
            BackGroundView() //primeira camada
            VStack { //segunda camada, componentes organizados verticalmente
                Text("Bem vindo, \(name)")
                    .font(.largeTitle)
                TextField(
                    "Insira seu nome", //placeholder
                    text: $name //armazena o texto inserido na variável name
                )
                .padding()
                .multilineTextAlignment(.center) //alinhar o textfield no centro da tela
                
                Spacer() //espacar um item do outro
                VStack { //componentizacao vertical da logo e do segundo caminhão
                    Image("logo")
                        .resizable()
                        .scaledToFill() 
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10) //adiciona uma sombra a imagem
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10) //adiciona uma sombra a imagem
                    
            }
                Spacer()
                Button("Entrar") { //quando clica no botão, a variável passa a ser true
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ALERTA!"),
                        message: Text("Você irá iniciar o desafio agora"),
                          dismissButton: .default(Text("Vamos lá"))
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
