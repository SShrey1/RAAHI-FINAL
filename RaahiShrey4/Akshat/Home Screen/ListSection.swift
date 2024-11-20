
import Foundation

enum ListSection {
    case trending([ListItem])
    case adventure([ListItem])
    case diary([ListItem])
    
    var items: [ListItem] {
        switch self {
        case .trending(let items),
                .adventure(let items),
                .diary(let items):
            return items
        }
    }
    
    var count: Int {
        return items.count
    }
    
    var title: String {
        switch self {
        case .trending:
            return "Trending"
        case .adventure:
            return "Adventure"
        case .diary:
            return "Traveller's Diary"
        }
    }
}
