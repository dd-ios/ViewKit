//
//  Reusable.swift
//

import UIKit

public protocol Reusable: AnyObject {
    static var reuseID: String { get }
}

extension Reusable {
    public static var reuseID: String { .init(describing: self) }
}

extension UICollectionReusableView: Reusable {
}

extension UITableViewCell: Reusable {
}

extension UITableViewHeaderFooterView: Reusable {
}
