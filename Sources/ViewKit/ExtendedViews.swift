//
//  ExtendedViews.swift
//

import UIKit
#if canImport(Combine)
import Combine
#endif

open class ScrollView: UIScrollView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class CollectionView: UICollectionView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class CollectionReusableView: UICollectionReusableView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func prepareForReuse() {
        super.prepareForReuse()
        if #available(iOS 13.0, *) {
            bag.removeAll()
        }
        bindPublishers()
    }
    
    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class CollectionViewCell: UICollectionViewCell, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        if #available(iOS 13.0, *) {
            bag.removeAll()
        }
        bindPublishers()
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class TableView: UITableView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class TableViewHeaderFooterView: UITableViewHeaderFooterView, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        if #available(iOS 13.0, *) {
            bag.removeAll()
        }
        bindPublishers()
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class TableViewCell: UITableViewCell, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        if #available(iOS 13.0, *) {
            bag.removeAll()
        }
        bindPublishers()
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class Control: UIControl, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class Button: UIButton, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class ImageView: UIImageView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public override init(image: UIImage?) {
        super.init(image: image)
        composite()
        bindPublishers()
    }

    public override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class Label: UILabel, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class TextView: UITextView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class TextField: UITextField, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}

open class VisualEffectView: UIVisualEffectView, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

    public override init(effect: UIVisualEffect?) {
        super.init(effect: effect)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

    open var layout: Layout { NoneLayout() }

    open override func layoutSubviews() {
        super.layoutSubviews()
        var layout = self.layout
        layout.layout(in: targetView.bounds)
    }

}
