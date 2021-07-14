//
//  UIKit+ViewBlock.swift
//

import UIKit

extension UIView: ViewBlock {

	public final
	func add(to superblock: ViewBlock) {
		switch superblock {
			case let composite as CompositeView:
				composite.targetView.addSubview(self)
			case let composite as UIStackView:
				composite.addArrangedSubview(self)
			case let composite as UIView:
				composite.addSubview(self)
			default: print(self)
		}
	}

}
