//
//  ContentHolder.swift
//

import UIKit

/// Protocols that provides `contentView` property of specific view type.
///
/// Strongly **not recommended** to implement `contentView` property in classes, that adopts this protocol.
public protocol ContentHolder: UIViewController {

    /// Specific type of view.
    associatedtype View: UIView

}

extension ContentHolder {

    /// Provides access to the `view` property by casting it to specific type.
    ///
    /// - Important: Do not implement this property in your classes, it already has default implementation
    ///              and designed to be used as it is. If you need some custom behaviour, do not use this protocol at all.
    public var contentView: View {
        guard let contentView = view as? View else {
            fatalError("Screen initialized with wrong view class!")
        }
        return contentView
    }

}
