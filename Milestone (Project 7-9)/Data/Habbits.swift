import Foundation

class Habbits: ObservableObject {
    @Published var items = [HabbitItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([HabbitItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}
