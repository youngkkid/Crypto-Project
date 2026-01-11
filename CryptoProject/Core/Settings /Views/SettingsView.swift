import SwiftUI

struct SettingsView: View {
    
    private let defaultURL = URL(string: "https://www.google.com")!
    private let coingeckoURL  = URL(string: "https://api.coingecko.com")!
    private let portfolioURL = URL(string: "https://nonchalant-chill-9f1.notion.site/23a33130410280e28145cbbace366109?source=copy_link")!
    
    
    var body: some View {
        NavigationView {
            List {
                coingeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(Color.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Settings"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}


extension SettingsView {
    private var coingeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data is used in this app comes from a free API from CoinGecko!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🔥", destination: coingeckoURL)
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by me. It uses SwiftUI and it's written 100% in Swift!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Check out my portfolio 💼", destination: portfolioURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        } header: {
            Text("Aplication")
        }
    }
    
}

#Preview {
    let dev = DeveloperPreview.instance
    NavigationStack {
        SettingsView()
    }
    .environmentObject(dev.homeVM)
}
