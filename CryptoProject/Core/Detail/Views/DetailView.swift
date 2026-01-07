import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("Initializing Detail view for \(coin.name)")
    }
    
    var body: some View {
        Text(coin.name)
        }
    }

#Preview {
    let dev = DeveloperPreview.instance
    DetailView(coin: dev.coin)
}
