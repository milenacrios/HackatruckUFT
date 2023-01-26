//
//  ContentView.swift
//  projeto03
//
//  Created by Student14 on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var peso: Double?
    @State var altura: Double?
    @State var imc: Double?
    @State var background_color: String = ""
    @State var resultado: String = "IMC"
    var body: some View {
        ZStack {
            Color("\(background_color)")
                .ignoresSafeArea(.all)
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Peso", value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                TextField("Altura", value: $altura, format: .number)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button(action: {
                    imc = peso! / (pow(altura!, 2))
                    
                    var simc = imc!.formatted(.number.precision(.fractionLength(2)))
                    if (imc! <= 18.5) {
                        background_color = "baixopeso"
                        resultado = "O seu \(simc) indica baixo peso"
                    } else if (imc! <= 24.99) {
                        resultado = "O seu \(simc) indica peso normal"
                        background_color = "normal"
                    } else if (imc! <= 29.99) {
                        resultado = "O seu IMC \(simc) indica sobrepeso"
                        background_color = "sobrepeso"
                    } else if (imc! >= 30) {
                        resultado = "O seu \(simc) indica obesidade"
                        background_color = "obesidade"
                    }
                }
                ){
                    Text("Calcular")
                        .frame(width: 100)
                        .foregroundColor(.white)
                        .font(.title3)
                }.buttonStyle(.borderedProminent)
                Spacer()
                Text("\(resultado)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    
                
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
