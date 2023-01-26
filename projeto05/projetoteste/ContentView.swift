import SwiftUI

struct ContentView: View {
   
    @State var articles : [Pessoa] = []
    
    
    
    func getJSON(){
        guard let url = URL(string: "https://mocki.io/v1/f774a2f5-48c8-4fc3-9e4f-b32759a5a873") else {
            return
        }
        URLSession.shared.dataTask(with: url) {(data, _, _) in
            guard let data = data else {
                return
            }
            let arrPessoa = try! JSONDecoder().decode([Pessoa].self, from: data)
            
            DispatchQueue.main.async {
                self.articles = arrPessoa
            }
        }.resume()
    }
    
    var body: some View {
        List(articles) { article in
            VStack (alignment: .leading) {
                HStack{
                    Text("Identificador: ")
                        .font(.headline)
                    Text(article.id.formatted())
                }
                HStack {
                    Text("Nome: ")
                        .font(.headline)
                    Text(article.first_name)
                }
                
                HStack {
                    Text("Idade: ")
                        .font(.headline)
                    Text(article.age.formatted())
                }
                HStack {
                    Text("IP")
                        .font(.headline)
                    Text(article.ip_address)
                }
                
            }
        }.onAppear(perform: getJSON)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Pessoa: Identifiable, Codable {
    let id: Int
    let first_name: String
    let age: Int
    let ip_address: String
}
