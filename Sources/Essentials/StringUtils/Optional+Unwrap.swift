import Foundation

extension Optional {
    /// Removes `Optional()` when printing optionals.
    /// ```swift
    /// var x: String? = "text"
    /// var y: String?
    /// print("\(x), \(y)")
    /// print("\(x.unwrapOptional), \(y.unwrapOptional")
    /// ```
    /// Results in:
    /// ```
    /// Optional("text"), nil
    /// text, nil
    /// ```
    public var unwrapOptional: String {
        if let v = self {
            return "\(v)"
        }
        return "nil"
    }
}
