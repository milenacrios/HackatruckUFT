//
//  BackGroundView.swift
//  projeto02
//
//  Created by Student14 on 19/01/23.
//

import SwiftUI

struct BackGroundView: View {
    var body: some View {
        Image("bg")
            .resizable() //ajusta a imagem ao tamanho da tela, por isso ele distorce
            .aspectRatio(1 / 1, contentMode: .fill) //corta as sobras da imagem, mantendo a proporcao original
            .edgesIgnoringSafeArea(.all) //contempla todas as bordas do celular (area)
            .saturation(0.5) //aumenta ou diminui a saturacao
            .blur(radius: 2) //quanto maior, mais focado é a imagem e quanto menor, menos focada é a imagem
            .opacity(0.2) //diminui a transparencia da imagem
    }
}

struct BackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundView()
    }
}
