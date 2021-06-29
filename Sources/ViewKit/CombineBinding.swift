//
//  CombineBinding.swift
//

#if canImport(Combine)
import Combine
#endif

/// A protocol, that provides convenience methods for classes to work with Combine's publishers.
public protocol CombineBinding: AnyObject {

    @available(iOS 13.0, *)
    var bag: Set<AnyCancellable> { get set }

    func bindPublishers()

}

@available(iOS 13.0, *)
extension CombineBinding {

    /// Convenience binding method for a publisher that fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    ///     - receiveCompletion: A completion callback for publisher. Default is empty.
    ///     - receiveValue: A value callback for publisher. Default is empty.
    public func bind<Upstream>(
        _ upstream: Upstream?,
        receiveCompletion: @escaping (Subscribers.Completion<Upstream.Failure>) -> Void,
        receiveValue: @escaping (Upstream.Output) -> Void
    ) where Upstream: Publisher, Upstream.Failure == Error {
        upstream?
            .sink(receiveCompletion: receiveCompletion, receiveValue: receiveValue)
            .store(in: &bag)
    }

    /// Convenience binding method for a publisher that fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    ///     - receiveCompletion: A completion callback for publisher. Default is empty.
    public func bind<Upstream>(
        _ upstream: Upstream?,
        receiveCompletion: @escaping (Subscribers.Completion<Upstream.Failure>) -> Void
    ) where Upstream: Publisher, Upstream.Failure == Error {
        upstream?
            .sink(receiveCompletion: receiveCompletion, receiveValue: { _ in })
            .store(in: &bag)
    }

    /// Convenience binding method for a publisher that fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    ///     - receiveCompletion: A completion callback for publisher. Default is empty.
    ///     - receiveValue: A value callback for publisher. Default is empty.
    public func bind<Upstream>(
        _ upstream: Upstream?,
        receiveValue: @escaping (Upstream.Output) -> Void
    ) where Upstream: Publisher, Upstream.Failure == Error {
        upstream?
            .sink(receiveCompletion: { _ in }, receiveValue: receiveValue)
            .store(in: &bag)
    }

    /// Convenience binding method for a publisher that fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    public func bind<Upstream>(_ upstream: Upstream?) where Upstream: Publisher, Upstream.Failure == Error {
        upstream?
            .sink(receiveCompletion: { _ in }, receiveValue: { _ in })
            .store(in: &bag)
    }

    /// Convenience binding method for a publisher that *never* fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    ///     - receiveValue: A value callback for publisher. Default is empty.
    public func bind<Upstream>(
        _ upstream: Upstream?,
        receiveValue: @escaping (Upstream.Output) -> Void
    ) where Upstream: Publisher, Upstream.Failure == Never {
        upstream?
            .sink(receiveValue: receiveValue)
            .store(in: &bag)
    }

    /// Convenience binding method for a publisher that *never* fails.
    ///
    /// - Parameters:
    ///     - upstream: Instance of a publisher to be connected.
    public func bind<Upstream>(_ upstream: Upstream?) where Upstream: Publisher, Upstream.Failure == Never {
        upstream?
            .sink(receiveValue: { _ in })
            .store(in: &bag)
    }

}
