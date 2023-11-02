public struct PubNotifyResponse: Codable, Hashable, Sendable {
	private let responseStatus: String?
	
	/// Description of the response
	public let pubNotifyDescription: String?
	
	/// Indicates API request status
	/// Allowed: true┃false
	public var status: Bool {
		switch responseStatus?.lowercased() {
		case "true": return true
		case "false": return false
		default: return false
		}
	}
	
	enum CodingKeys: String, CodingKey {
		case responseStatus = "status"
		case pubNotifyDescription = "description"
	}
}
