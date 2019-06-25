//
//  SwiftResponse.swift
//  Nebula
//
//  Created by Khalid Asad on 2019-06-24.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import Foundation

// MARK: - SwiftResponse
class SwiftResponse: Codable {
    let kind: String
    let data: SwiftResponseData
    
    init(kind: String, data: SwiftResponseData) {
        self.kind = kind
        self.data = data
    }
}

// MARK: - SwiftResponseData
class SwiftResponseData: Codable {
    let modhash: String
    let dist: Int
    let children: [Child]
    let after: String
    let before: JSONNull?
    
    init(modhash: String, dist: Int, children: [Child], after: String, before: JSONNull?) {
        self.modhash = modhash
        self.dist = dist
        self.children = children
        self.after = after
        self.before = before
    }
}

// MARK: - Child
class Child: Codable {
    let kind: Kind
    let data: ChildData
    
    init(kind: Kind, data: ChildData) {
        self.kind = kind
        self.data = data
    }
}

// MARK: - ChildData
class ChildData: Codable {
    let approvedAtUTC: JSONNull?
    let subreddit: Subreddit
    let selftext, authorFullname: String
    let saved: Bool
    let modReasonTitle: JSONNull?
    let gilded: Int
    let clicked: Bool
    let title: String
    let linkFlairRichtext: [JSONAny]
    let subredditNamePrefixed: SubredditNamePrefixed
    let hidden: Bool
    let pwls: Int
    let linkFlairCSSClass: String?
    let downs: Int
    let thumbnailHeight: Int?
    let hideScore: Bool
    let name: String
    let quarantine: Bool
    let linkFlairTextColor: FlairTextColor
    let authorFlairBackgroundColor: String?
    let subredditType: SubredditType
    let ups, totalAwardsReceived: Int
    let mediaEmbed: Gildings
    let thumbnailWidth: Int?
    let authorFlairTemplateID: JSONNull?
    let isOriginalContent: Bool
    let userReports: [JSONAny]
    let secureMedia: JSONNull?
    let isRedditMediaDomain, isMeta: Bool
    let category: JSONNull?
    let secureMediaEmbed: Gildings
    let linkFlairText: String?
    let canModPost: Bool
    let score: Int
    let approvedBy: JSONNull?
    let thumbnail: String
    let edited: Edited
    let authorFlairCSSClass: JSONNull?
    let authorFlairRichtext: [JSONAny]
    let gildings: Gildings
    let postHint: PostHint?
    let contentCategories: JSONNull?
    let isSelf: Bool
    let modNote: JSONNull?
    let created: Int
    let linkFlairType: FlairType
    let wls: Int
    let bannedBy: JSONNull?
    let authorFlairType: FlairType
    let domain: String
    let selftextHTML: String?
    let likes: Bool?
    let suggestedSort, bannedAtUTC, viewCount: JSONNull?
    let archived, noFollow, isCrosspostable, pinned: Bool
    let over18: Bool
    let preview: Preview?
    let allAwardings: [JSONAny]
    let mediaOnly, canGild, spoiler, locked: Bool
    let authorFlairText: String?
    let visited: Bool
    let numReports, distinguished: JSONNull?
    let subredditID: SubredditID
    let modReasonBy, removalReason: JSONNull?
    let linkFlairBackgroundColor, id: String
    let isRobotIndexable: Bool
    let reportReasons: JSONNull?
    let author: String
    let numCrossposts, numComments: Int
    let sendReplies: Bool
    let whitelistStatus: WhitelistStatus
    let contestMode: Bool
    let modReports: [JSONAny]
    let authorPatreonFlair: Bool
    let authorFlairTextColor: FlairTextColor?
    let permalink: String
    let parentWhitelistStatus: WhitelistStatus
    let stickied: Bool
    let url: String
    let subredditSubscribers, createdUTC: Int
    let media: JSONNull?
    let isVideo: Bool
    let linkFlairTemplateID: String?
    let mediaMetadata: MediaMetadata?
    
    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case thumbnail, edited
        case authorFlairCSSClass = "author_flair_css_class"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case postHint = "post_hint"
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case preview
        case allAwardings = "all_awardings"
        case mediaOnly = "media_only"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case visited
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case numCrossposts = "num_crossposts"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case media
        case isVideo = "is_video"
        case linkFlairTemplateID = "link_flair_template_id"
        case mediaMetadata = "media_metadata"
    }
    
    init(approvedAtUTC: JSONNull?, subreddit: Subreddit, selftext: String, authorFullname: String, saved: Bool, modReasonTitle: JSONNull?, gilded: Int, clicked: Bool, title: String, linkFlairRichtext: [JSONAny], subredditNamePrefixed: SubredditNamePrefixed, hidden: Bool, pwls: Int, linkFlairCSSClass: String?, downs: Int, thumbnailHeight: Int?, hideScore: Bool, name: String, quarantine: Bool, linkFlairTextColor: FlairTextColor, authorFlairBackgroundColor: String?, subredditType: SubredditType, ups: Int, totalAwardsReceived: Int, mediaEmbed: Gildings, thumbnailWidth: Int?, authorFlairTemplateID: JSONNull?, isOriginalContent: Bool, userReports: [JSONAny], secureMedia: JSONNull?, isRedditMediaDomain: Bool, isMeta: Bool, category: JSONNull?, secureMediaEmbed: Gildings, linkFlairText: String?, canModPost: Bool, score: Int, approvedBy: JSONNull?, thumbnail: String, edited: Edited, authorFlairCSSClass: JSONNull?, authorFlairRichtext: [JSONAny], gildings: Gildings, postHint: PostHint?, contentCategories: JSONNull?, isSelf: Bool, modNote: JSONNull?, created: Int, linkFlairType: FlairType, wls: Int, bannedBy: JSONNull?, authorFlairType: FlairType, domain: String, selftextHTML: String?, likes: Bool?, suggestedSort: JSONNull?, bannedAtUTC: JSONNull?, viewCount: JSONNull?, archived: Bool, noFollow: Bool, isCrosspostable: Bool, pinned: Bool, over18: Bool, preview: Preview?, allAwardings: [JSONAny], mediaOnly: Bool, canGild: Bool, spoiler: Bool, locked: Bool, authorFlairText: String?, visited: Bool, numReports: JSONNull?, distinguished: JSONNull?, subredditID: SubredditID, modReasonBy: JSONNull?, removalReason: JSONNull?, linkFlairBackgroundColor: String, id: String, isRobotIndexable: Bool, reportReasons: JSONNull?, author: String, numCrossposts: Int, numComments: Int, sendReplies: Bool, whitelistStatus: WhitelistStatus, contestMode: Bool, modReports: [JSONAny], authorPatreonFlair: Bool, authorFlairTextColor: FlairTextColor?, permalink: String, parentWhitelistStatus: WhitelistStatus, stickied: Bool, url: String, subredditSubscribers: Int, createdUTC: Int, media: JSONNull?, isVideo: Bool, linkFlairTemplateID: String?, mediaMetadata: MediaMetadata?) {
        self.approvedAtUTC = approvedAtUTC
        self.subreddit = subreddit
        self.selftext = selftext
        self.authorFullname = authorFullname
        self.saved = saved
        self.modReasonTitle = modReasonTitle
        self.gilded = gilded
        self.clicked = clicked
        self.title = title
        self.linkFlairRichtext = linkFlairRichtext
        self.subredditNamePrefixed = subredditNamePrefixed
        self.hidden = hidden
        self.pwls = pwls
        self.linkFlairCSSClass = linkFlairCSSClass
        self.downs = downs
        self.thumbnailHeight = thumbnailHeight
        self.hideScore = hideScore
        self.name = name
        self.quarantine = quarantine
        self.linkFlairTextColor = linkFlairTextColor
        self.authorFlairBackgroundColor = authorFlairBackgroundColor
        self.subredditType = subredditType
        self.ups = ups
        self.totalAwardsReceived = totalAwardsReceived
        self.mediaEmbed = mediaEmbed
        self.thumbnailWidth = thumbnailWidth
        self.authorFlairTemplateID = authorFlairTemplateID
        self.isOriginalContent = isOriginalContent
        self.userReports = userReports
        self.secureMedia = secureMedia
        self.isRedditMediaDomain = isRedditMediaDomain
        self.isMeta = isMeta
        self.category = category
        self.secureMediaEmbed = secureMediaEmbed
        self.linkFlairText = linkFlairText
        self.canModPost = canModPost
        self.score = score
        self.approvedBy = approvedBy
        self.thumbnail = thumbnail
        self.edited = edited
        self.authorFlairCSSClass = authorFlairCSSClass
        self.authorFlairRichtext = authorFlairRichtext
        self.gildings = gildings
        self.postHint = postHint
        self.contentCategories = contentCategories
        self.isSelf = isSelf
        self.modNote = modNote
        self.created = created
        self.linkFlairType = linkFlairType
        self.wls = wls
        self.bannedBy = bannedBy
        self.authorFlairType = authorFlairType
        self.domain = domain
        self.selftextHTML = selftextHTML
        self.likes = likes
        self.suggestedSort = suggestedSort
        self.bannedAtUTC = bannedAtUTC
        self.viewCount = viewCount
        self.archived = archived
        self.noFollow = noFollow
        self.isCrosspostable = isCrosspostable
        self.pinned = pinned
        self.over18 = over18
        self.preview = preview
        self.allAwardings = allAwardings
        self.mediaOnly = mediaOnly
        self.canGild = canGild
        self.spoiler = spoiler
        self.locked = locked
        self.authorFlairText = authorFlairText
        self.visited = visited
        self.numReports = numReports
        self.distinguished = distinguished
        self.subredditID = subredditID
        self.modReasonBy = modReasonBy
        self.removalReason = removalReason
        self.linkFlairBackgroundColor = linkFlairBackgroundColor
        self.id = id
        self.isRobotIndexable = isRobotIndexable
        self.reportReasons = reportReasons
        self.author = author
        self.numCrossposts = numCrossposts
        self.numComments = numComments
        self.sendReplies = sendReplies
        self.whitelistStatus = whitelistStatus
        self.contestMode = contestMode
        self.modReports = modReports
        self.authorPatreonFlair = authorPatreonFlair
        self.authorFlairTextColor = authorFlairTextColor
        self.permalink = permalink
        self.parentWhitelistStatus = parentWhitelistStatus
        self.stickied = stickied
        self.url = url
        self.subredditSubscribers = subredditSubscribers
        self.createdUTC = createdUTC
        self.media = media
        self.isVideo = isVideo
        self.linkFlairTemplateID = linkFlairTemplateID
        self.mediaMetadata = mediaMetadata
    }
}

enum FlairTextColor: String, Codable {
    case dark = "dark"
}

enum FlairType: String, Codable {
    case text = "text"
}

enum Edited: Codable {
    case bool(Bool)
    case integer(Int)
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        throw DecodingError.typeMismatch(Edited.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Edited"))
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        }
    }
}

// MARK: - Gildings
class Gildings: Codable {
    
    init() {
    }
}

// MARK: - MediaMetadata
class MediaMetadata: Codable {
    let wdlb932Oba631: Wdlb932Oba631
    
    enum CodingKeys: String, CodingKey {
        case wdlb932Oba631 = "wdlb932oba631"
    }
    
    init(wdlb932Oba631: Wdlb932Oba631) {
        self.wdlb932Oba631 = wdlb932Oba631
    }
}

// MARK: - Wdlb932Oba631
class Wdlb932Oba631: Codable {
    let status, e: String
    let s: S
    let m, id: String
    
    init(status: String, e: String, s: S, m: String, id: String) {
        self.status = status
        self.e = e
        self.s = s
        self.m = m
        self.id = id
    }
}

// MARK: - S
class S: Codable {
    let y, x: Int
    let u: String
    
    init(y: Int, x: Int, u: String) {
        self.y = y
        self.x = x
        self.u = u
    }
}

enum WhitelistStatus: String, Codable {
    case allAds = "all_ads"
}

enum PostHint: String, Codable {
    case image = "image"
    case link = "link"
    case postHintSelf = "self"
}

// MARK: - Preview
class Preview: Codable {
    let images: [Image]
    let enabled: Bool
    
    init(images: [Image], enabled: Bool) {
        self.images = images
        self.enabled = enabled
    }
}

// MARK: - Image
class Image: Codable {
    let source: Source
    let resolutions: [Source]
    let variants: Gildings
    let id: String
    
    init(source: Source, resolutions: [Source], variants: Gildings, id: String) {
        self.source = source
        self.resolutions = resolutions
        self.variants = variants
        self.id = id
    }
}

// MARK: - Source
class Source: Codable {
    let url: String
    let width, height: Int
    
    init(url: String, width: Int, height: Int) {
        self.url = url
        self.width = width
        self.height = height
    }
}

enum Subreddit: String, Codable {
    case swift = "swift"
}

enum SubredditID: String, Codable {
    case t52Z6Zi = "t5_2z6zi"
}

enum SubredditNamePrefixed: String, Codable {
    case rSwift = "r/swift"
}

enum SubredditType: String, Codable {
    case subredditTypePublic = "public"
}

enum Kind: String, Codable {
    case t3 = "t3"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
