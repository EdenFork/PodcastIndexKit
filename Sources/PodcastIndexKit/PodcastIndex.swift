import Foundation
import SwiftData

@Observable
public final class PodcastIndex: Sendable {
    public init() { }
    
    static public func setup(apiKey: String, apiSecret: String, userAgent: String) async {
        await PodcastEnvironment.current.setup(apiKey: apiKey, apiSecret: apiSecret, userAgent: userAgent)
    }
}
