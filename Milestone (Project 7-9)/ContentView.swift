import SwiftUI

struct ContentView: View {
    @StateObject var habbits = Habbits()
    @State private var showingAddHabbit = false
    @State private var showingHabbits = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("List of habbits 1")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .padding(15.0)
                    }
                    .frame(width: 300)
                    .background(.lightBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    HStack {
                        Text("List of habbits 1")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .padding(15)
                    }
                    .frame(width: 300)
                    .background(.lightBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .navigationTitle("TrackYourHabbit")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
