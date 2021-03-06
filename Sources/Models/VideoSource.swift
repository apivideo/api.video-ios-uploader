//
// VideoSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Source information about the video. */
public struct VideoSource: Codable, Hashable {

    /** The URL where the video is stored. */
    public var uri: String?
    public var type: String?
    public var liveStream: VideoSourceLiveStream?

    public init(uri: String? = nil, type: String? = nil, liveStream: VideoSourceLiveStream? = nil) {
        self.uri = uri
        self.type = type
        self.liveStream = liveStream
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uri
        case type
        case liveStream
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(liveStream, forKey: .liveStream)
    }
}

