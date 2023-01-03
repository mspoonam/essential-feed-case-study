import UIKit
import EssentialFeed

public struct CellController {
    let id: AnyHashable
    let dataSource: UITableViewDataSource
    let delegate: UITableViewDelegate?
    let dataSourcePrefetching: UITableViewDataSourcePrefetching?
    
    public init(id: AnyHashable, _ dataSource: UITableViewDataSource, _ delegate: UITableViewDelegate?, _ dataSourcePrefetching: UITableViewDataSourcePrefetching?) {
        self.id = id 
        self.dataSource = dataSource
        self.delegate = delegate
        self.dataSourcePrefetching = dataSourcePrefetching
    }
    
    public init(id: AnyHashable, dataSource: UITableViewDataSource) {
        self.id = id
        self.dataSource = dataSource
        self.delegate = nil
        self.dataSourcePrefetching = nil
    }
}

extension CellController: Equatable {
    public static func == (lhs: CellController, rhs: CellController) -> Bool {
        lhs.id == rhs.id
    }
}

extension CellController: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
