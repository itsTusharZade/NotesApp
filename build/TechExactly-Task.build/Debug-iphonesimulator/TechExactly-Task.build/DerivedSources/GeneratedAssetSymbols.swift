import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "bg_color" asset catalog image resource.
    static let bg = DeveloperToolsSupport.ImageResource(name: "bg_color", bundle: resourceBundle)

    /// The "bold" asset catalog image resource.
    static let bold = DeveloperToolsSupport.ImageResource(name: "bold", bundle: resourceBundle)

    /// The "checkbox" asset catalog image resource.
    static let checkbox = DeveloperToolsSupport.ImageResource(name: "checkbox", bundle: resourceBundle)

    /// The "clear" asset catalog image resource.
    static let clear = DeveloperToolsSupport.ImageResource(name: "clear", bundle: resourceBundle)

    /// The "h1" asset catalog image resource.
    static let h1 = DeveloperToolsSupport.ImageResource(name: "h1", bundle: resourceBundle)

    /// The "h2" asset catalog image resource.
    static let h2 = DeveloperToolsSupport.ImageResource(name: "h2", bundle: resourceBundle)

    /// The "h3" asset catalog image resource.
    static let h3 = DeveloperToolsSupport.ImageResource(name: "h3", bundle: resourceBundle)

    /// The "h4" asset catalog image resource.
    static let h4 = DeveloperToolsSupport.ImageResource(name: "h4", bundle: resourceBundle)

    /// The "h5" asset catalog image resource.
    static let h5 = DeveloperToolsSupport.ImageResource(name: "h5", bundle: resourceBundle)

    /// The "h6" asset catalog image resource.
    static let h6 = DeveloperToolsSupport.ImageResource(name: "h6", bundle: resourceBundle)

    /// The "indent" asset catalog image resource.
    static let indent = DeveloperToolsSupport.ImageResource(name: "indent", bundle: resourceBundle)

    /// The "insert_image" asset catalog image resource.
    static let insert = DeveloperToolsSupport.ImageResource(name: "insert_image", bundle: resourceBundle)

    /// The "insert_link" asset catalog image resource.
    static let insertLink = DeveloperToolsSupport.ImageResource(name: "insert_link", bundle: resourceBundle)

    /// The "insert_table" asset catalog image resource.
    static let insertTable = DeveloperToolsSupport.ImageResource(name: "insert_table", bundle: resourceBundle)

    /// The "insert_video" asset catalog image resource.
    static let insertVideo = DeveloperToolsSupport.ImageResource(name: "insert_video", bundle: resourceBundle)

    /// The "italic" asset catalog image resource.
    static let italic = DeveloperToolsSupport.ImageResource(name: "italic", bundle: resourceBundle)

    /// The "justify_center" asset catalog image resource.
    static let justifyCenter = DeveloperToolsSupport.ImageResource(name: "justify_center", bundle: resourceBundle)

    /// The "justify_left" asset catalog image resource.
    static let justifyLeft = DeveloperToolsSupport.ImageResource(name: "justify_left", bundle: resourceBundle)

    /// The "justify_right" asset catalog image resource.
    static let justifyRight = DeveloperToolsSupport.ImageResource(name: "justify_right", bundle: resourceBundle)

    /// The "ordered_list" asset catalog image resource.
    static let orderedList = DeveloperToolsSupport.ImageResource(name: "ordered_list", bundle: resourceBundle)

    /// The "outdent" asset catalog image resource.
    static let outdent = DeveloperToolsSupport.ImageResource(name: "outdent", bundle: resourceBundle)

    /// The "redo" asset catalog image resource.
    static let redo = DeveloperToolsSupport.ImageResource(name: "redo", bundle: resourceBundle)

    /// The "strikethrough" asset catalog image resource.
    static let strikethrough = DeveloperToolsSupport.ImageResource(name: "strikethrough", bundle: resourceBundle)

    /// The "subscript" asset catalog image resource.
    static let `subscript` = DeveloperToolsSupport.ImageResource(name: "subscript", bundle: resourceBundle)

    /// The "superscript" asset catalog image resource.
    static let superscript = DeveloperToolsSupport.ImageResource(name: "superscript", bundle: resourceBundle)

    /// The "text_color" asset catalog image resource.
    static let text = DeveloperToolsSupport.ImageResource(name: "text_color", bundle: resourceBundle)

    /// The "underline" asset catalog image resource.
    static let underline = DeveloperToolsSupport.ImageResource(name: "underline", bundle: resourceBundle)

    /// The "undo" asset catalog image resource.
    static let undo = DeveloperToolsSupport.ImageResource(name: "undo", bundle: resourceBundle)

    /// The "unordered_list" asset catalog image resource.
    static let unorderedList = DeveloperToolsSupport.ImageResource(name: "unordered_list", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "bg_color" asset catalog image.
    static var bg: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bg)
#else
        .init()
#endif
    }

    /// The "bold" asset catalog image.
    static var bold: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bold)
#else
        .init()
#endif
    }

    /// The "checkbox" asset catalog image.
    static var checkbox: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .checkbox)
#else
        .init()
#endif
    }

    /// The "clear" asset catalog image.
    static var clear: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .clear)
#else
        .init()
#endif
    }

    /// The "h1" asset catalog image.
    static var h1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h1)
#else
        .init()
#endif
    }

    /// The "h2" asset catalog image.
    static var h2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h2)
#else
        .init()
#endif
    }

    /// The "h3" asset catalog image.
    static var h3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h3)
#else
        .init()
#endif
    }

    /// The "h4" asset catalog image.
    static var h4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h4)
#else
        .init()
#endif
    }

    /// The "h5" asset catalog image.
    static var h5: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h5)
#else
        .init()
#endif
    }

    /// The "h6" asset catalog image.
    static var h6: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .h6)
#else
        .init()
#endif
    }

    /// The "indent" asset catalog image.
    static var indent: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .indent)
#else
        .init()
#endif
    }

    /// The "insert_image" asset catalog image.
    static var insert: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .insert)
#else
        .init()
#endif
    }

    /// The "insert_link" asset catalog image.
    static var insertLink: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .insertLink)
#else
        .init()
#endif
    }

    /// The "insert_table" asset catalog image.
    static var insertTable: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .insertTable)
#else
        .init()
#endif
    }

    /// The "insert_video" asset catalog image.
    static var insertVideo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .insertVideo)
#else
        .init()
#endif
    }

    /// The "italic" asset catalog image.
    static var italic: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .italic)
#else
        .init()
#endif
    }

    /// The "justify_center" asset catalog image.
    static var justifyCenter: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .justifyCenter)
#else
        .init()
#endif
    }

    /// The "justify_left" asset catalog image.
    static var justifyLeft: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .justifyLeft)
#else
        .init()
#endif
    }

    /// The "justify_right" asset catalog image.
    static var justifyRight: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .justifyRight)
#else
        .init()
#endif
    }

    /// The "ordered_list" asset catalog image.
    static var orderedList: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .orderedList)
#else
        .init()
#endif
    }

    /// The "outdent" asset catalog image.
    static var outdent: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .outdent)
#else
        .init()
#endif
    }

    /// The "redo" asset catalog image.
    static var redo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .redo)
#else
        .init()
#endif
    }

    /// The "strikethrough" asset catalog image.
    static var strikethrough: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .strikethrough)
#else
        .init()
#endif
    }

    /// The "subscript" asset catalog image.
    static var `subscript`: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .`subscript`)
#else
        .init()
#endif
    }

    /// The "superscript" asset catalog image.
    static var superscript: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .superscript)
#else
        .init()
#endif
    }

    /// The "text_color" asset catalog image.
    static var text: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .text)
#else
        .init()
#endif
    }

    /// The "underline" asset catalog image.
    static var underline: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .underline)
#else
        .init()
#endif
    }

    /// The "undo" asset catalog image.
    static var undo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .undo)
#else
        .init()
#endif
    }

    /// The "unordered_list" asset catalog image.
    static var unorderedList: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .unorderedList)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "bg_color" asset catalog image.
    static var bg: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bg)
#else
        .init()
#endif
    }

    /// The "bold" asset catalog image.
    static var bold: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bold)
#else
        .init()
#endif
    }

    /// The "checkbox" asset catalog image.
    static var checkbox: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .checkbox)
#else
        .init()
#endif
    }

    /// The "clear" asset catalog image.
    static var clear: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .clear)
#else
        .init()
#endif
    }

    /// The "h1" asset catalog image.
    static var h1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h1)
#else
        .init()
#endif
    }

    /// The "h2" asset catalog image.
    static var h2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h2)
#else
        .init()
#endif
    }

    /// The "h3" asset catalog image.
    static var h3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h3)
#else
        .init()
#endif
    }

    /// The "h4" asset catalog image.
    static var h4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h4)
#else
        .init()
#endif
    }

    /// The "h5" asset catalog image.
    static var h5: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h5)
#else
        .init()
#endif
    }

    /// The "h6" asset catalog image.
    static var h6: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .h6)
#else
        .init()
#endif
    }

    /// The "indent" asset catalog image.
    static var indent: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .indent)
#else
        .init()
#endif
    }

    /// The "insert_image" asset catalog image.
    static var insert: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .insert)
#else
        .init()
#endif
    }

    /// The "insert_link" asset catalog image.
    static var insertLink: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .insertLink)
#else
        .init()
#endif
    }

    /// The "insert_table" asset catalog image.
    static var insertTable: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .insertTable)
#else
        .init()
#endif
    }

    /// The "insert_video" asset catalog image.
    static var insertVideo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .insertVideo)
#else
        .init()
#endif
    }

    /// The "italic" asset catalog image.
    static var italic: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .italic)
#else
        .init()
#endif
    }

    /// The "justify_center" asset catalog image.
    static var justifyCenter: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .justifyCenter)
#else
        .init()
#endif
    }

    /// The "justify_left" asset catalog image.
    static var justifyLeft: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .justifyLeft)
#else
        .init()
#endif
    }

    /// The "justify_right" asset catalog image.
    static var justifyRight: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .justifyRight)
#else
        .init()
#endif
    }

    /// The "ordered_list" asset catalog image.
    static var orderedList: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .orderedList)
#else
        .init()
#endif
    }

    /// The "outdent" asset catalog image.
    static var outdent: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .outdent)
#else
        .init()
#endif
    }

    /// The "redo" asset catalog image.
    static var redo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .redo)
#else
        .init()
#endif
    }

    /// The "strikethrough" asset catalog image.
    static var strikethrough: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .strikethrough)
#else
        .init()
#endif
    }

    /// The "subscript" asset catalog image.
    static var `subscript`: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .`subscript`)
#else
        .init()
#endif
    }

    /// The "superscript" asset catalog image.
    static var superscript: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .superscript)
#else
        .init()
#endif
    }

    /// The "text_color" asset catalog image.
    static var text: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .text)
#else
        .init()
#endif
    }

    /// The "underline" asset catalog image.
    static var underline: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .underline)
#else
        .init()
#endif
    }

    /// The "undo" asset catalog image.
    static var undo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .undo)
#else
        .init()
#endif
    }

    /// The "unordered_list" asset catalog image.
    static var unorderedList: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .unorderedList)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

