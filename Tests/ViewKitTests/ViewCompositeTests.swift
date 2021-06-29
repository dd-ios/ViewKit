//
//  ViewCompositeTests.swift
//

import XCTest

@testable
import ViewKit

final class ViewCompositeTests: XCTestCase {

    func testCorrectTargetView() {
        let view = SampleView()
        XCTAssert(view.blur.contentView.subviews.first === view.label)
    }

}

private final class SampleView: CoreView {

    override var viewComposition: ViewBlock {
        ViewComposite(blur) {
            label
        }
    }

    let label: UILabel = ViewConvertible()
        .text("Hello")
    let blur = VisualEffectView(effect: UIBlurEffect(style: .light))

}
