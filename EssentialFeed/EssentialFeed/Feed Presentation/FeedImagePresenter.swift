//
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(with image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(description: image.description,
                           location: image.location)
    }
}
