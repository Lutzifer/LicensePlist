import Foundation
import LoggerAPI
import Yaml

public struct GeneralOptions {
    public let outputPath: String?
    public let cartfilePath: String?
    public let mintfilePath: String?
    public let podsPath: String?
    public let packagePaths: [String]?
    public let packageSourcesPath: String?
    public let xcworkspacePath: String?
    public let xcodeprojPath: String?
    public let prefix: String?
    public let gitHubToken: String?
    public let htmlPath: String?
    public let markdownPath: String?
    public let licenseFileNames: [String]?
    public let force: Bool?
    public let addVersionNumbers: Bool?
    public let suppressOpeningDirectory: Bool?
    public let singlePage: Bool?
    public let failIfMissingLicense: Bool?
    public let addSources: Bool?
    public let sandboxMode: Bool?

    public static let empty = GeneralOptions(outputPath: nil,
                                             cartfilePath: nil,
                                             mintfilePath: nil,
                                             podsPath: nil,
                                             packagePaths: nil,
                                             packageSourcesPath: nil,
                                             xcworkspacePath: nil,
                                             xcodeprojPath: nil,
                                             prefix: nil,
                                             gitHubToken: nil,
                                             htmlPath: nil,
                                             markdownPath: nil,
                                             licenseFileNames: nil,
                                             force: nil,
                                             addVersionNumbers: nil,
                                             suppressOpeningDirectory: nil,
                                             singlePage: nil,
                                             failIfMissingLicense: nil,
                                             addSources: nil,
                                             sandboxMode: nil)

    public init(outputPath: String?,
                cartfilePath: String?,
                mintfilePath: String?,
                podsPath: String?,
                packagePaths: [String]?,
                packageSourcesPath: String?,
                xcworkspacePath: String?,
                xcodeprojPath: String?,
                prefix: String?,
                gitHubToken: String?,
                htmlPath: String?,
                markdownPath: String?,
                licenseFileNames: [String]?,
                force: Bool?,
                addVersionNumbers: Bool?,
                suppressOpeningDirectory: Bool?,
                singlePage: Bool?,
                failIfMissingLicense: Bool?,
                addSources: Bool?,
                sandboxMode: Bool?) {
        self.outputPath = outputPath
        self.cartfilePath = cartfilePath
        self.mintfilePath = mintfilePath
        self.podsPath = podsPath
        self.packagePaths = packagePaths
        self.packageSourcesPath = packageSourcesPath
        self.xcworkspacePath = xcworkspacePath
        self.xcodeprojPath = xcodeprojPath
        self.prefix = prefix
        self.gitHubToken = gitHubToken
        self.htmlPath = htmlPath
        self.markdownPath = markdownPath
        self.licenseFileNames = licenseFileNames
        self.force = force
        self.addVersionNumbers = addVersionNumbers
        self.suppressOpeningDirectory = suppressOpeningDirectory
        self.singlePage = singlePage
        self.failIfMissingLicense = failIfMissingLicense
        self.addSources = addSources
        self.sandboxMode = sandboxMode
    }
}

extension GeneralOptions {
    public static func==(lhs: GeneralOptions, rhs: GeneralOptions) -> Bool {
        return lhs.outputPath == rhs.outputPath &&
            lhs.cartfilePath == rhs.cartfilePath &&
            lhs.mintfilePath == rhs.mintfilePath &&
            lhs.podsPath == rhs.podsPath &&
            lhs.packagePaths == rhs.packagePaths &&
            lhs.packageSourcesPath == rhs.packageSourcesPath &&
            lhs.xcworkspacePath == rhs.xcworkspacePath &&
            lhs.xcodeprojPath == rhs.xcodeprojPath &&
            lhs.prefix == rhs.prefix &&
            lhs.gitHubToken == rhs.gitHubToken &&
            lhs.htmlPath == rhs.htmlPath &&
            lhs.markdownPath == rhs.markdownPath &&
            lhs.licenseFileNames == rhs.licenseFileNames &&
            lhs.force == rhs.force &&
            lhs.addVersionNumbers == rhs.addVersionNumbers &&
            lhs.suppressOpeningDirectory == rhs.suppressOpeningDirectory &&
            lhs.singlePage == rhs.singlePage &&
            lhs.failIfMissingLicense == rhs.failIfMissingLicense &&
            lhs.addSources == rhs.addSources &&
            lhs.sandboxMode == rhs.sandboxMode
    }
}

extension GeneralOptions {
    public static func load(_ raw: [Yaml: Yaml]) -> GeneralOptions {
        return GeneralOptions(outputPath: raw["outputPath"]?.string,
                              cartfilePath: raw["cartfilePath"]?.string,
                              mintfilePath: raw["mintfilePath"]?.string,
                              podsPath: raw["podsPath"]?.string,
                              packagePaths: raw["packagePaths"]?.array?.compactMap(\.string),
                              packageSourcesPath: raw["packageSourcesPath"]?.string,
                              xcworkspacePath: raw["xcworkspacePath"]?.string,
                              xcodeprojPath: raw["xcodeprojPath"]?.string,
                              prefix: raw["prefix"]?.string,
                              gitHubToken: raw["gitHubToken"]?.string,
                              htmlPath: raw["htmlPath"]?.string,
                              markdownPath: raw["markdownPath"]?.string,
                              licenseFileNames: raw["licenseFileNames"]?.array?.compactMap(\.string),
                              force: raw["force"]?.bool,
                              addVersionNumbers: raw["addVersionNumbers"]?.bool,
                              suppressOpeningDirectory: raw["suppressOpeningDirectory"]?.bool,
                              singlePage: raw["singlePage"]?.bool,
                              failIfMissingLicense: raw["failIfMissingLicense"]?.bool,
                              addSources: raw["addSources"]?.bool,
                              sandboxMode: raw["sandboxMode"]?.bool)
    }
}
