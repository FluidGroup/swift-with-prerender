import CATransactionQueue

@MainActor
public func withPrerender(_ body: @escaping @Sendable @MainActor () -> Void) {
  CATransactionQueue.shared.enqueue(work: body)
}
