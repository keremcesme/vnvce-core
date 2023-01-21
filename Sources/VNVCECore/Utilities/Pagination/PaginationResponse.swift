
import Foundation

public struct PaginationParams {
    public var page: Int
    public var per: Int
    
    public init(page: Int, per: Int) {
        self.page = page
        self.per = per
    }
    
    public var raw: String {
        return "?page=\(page)&per=\(per)".path
    }
}

public struct PageMetadata: Codable, Hashable {
    public var page, per, total: Int
    
    public init(page: Int = 0, per: Int = 0, total: Int = 0) {
        self.page = page
        self.per = per
        self.total = total
    }
}

public struct PaginationResponse<T: Decodable>: Decodable {
    public var items: [T]
    public var metadata: PageMetadata
    
    public init(items: [T] = [], metadata: PageMetadata = .init()) {
        self.items = items
        self.metadata = metadata
    }
}
