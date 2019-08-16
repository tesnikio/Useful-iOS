import Foundation

public enum Result<T, E: Error> {
    case success(T)
    case error(E)
}

public extension Result {
    var isSuccess: Bool {
        return !isError
    }

    var isError: Bool {
        switch self {
        case .error(_):
            return true
        case .success(_):
            return false
        }
    }

    var error: E? {
        switch self {
        case .success(_):
            return nil
        case .error(let err):
            return err
        }
    }

    var value: T? {
        switch self {
        case .success(let result):
            return result
        case .error(_):
            return nil
        }
    }
}
