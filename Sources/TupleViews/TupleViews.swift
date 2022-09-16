public struct CoupleView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    private var iterator: Base.Iterator
    
    public init(_ base: Base) {
        iterator = base.makeIterator()
    }
    
    public mutating func next() -> Element? {
        guard let a = iterator.next() else {
            return nil
        }
        guard let b = iterator.next() else {
            fatalError("Not enough elements in base sequence")
        }
        return (a, b)
    }
}

public struct TripleView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    private var iterator: Base.Iterator
    
    public init(_ base: Base) {
        iterator = base.makeIterator()
    }
    
    public mutating func next() -> Element? {
        guard let a = iterator.next() else {
            return nil
        }
        guard let b = iterator.next(),
              let c = iterator.next() else {
            fatalError("Not enough elements in base sequence")
        }
        return (a, b, c)
    }
}

public struct QuadrupleView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    private var iterator: Base.Iterator
    
    public init(_ base: Base) {
        iterator = base.makeIterator()
    }
    
    public mutating func next() -> Element? {
        guard let a = iterator.next() else {
            return nil
        }
        guard let b = iterator.next(),
              let c = iterator.next(),
              let d = iterator.next() else {
            fatalError("Not enough elements in base sequence")
        }
        return (a, b, c, d)
    }
}

public struct QuintupleView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    private var iterator: Base.Iterator
    
    public init(_ base: Base) {
        iterator = base.makeIterator()
    }
    
    public mutating func next() -> Element? {
        guard let a = iterator.next() else {
            return nil
        }
        guard let b = iterator.next(),
              let c = iterator.next(),
              let d = iterator.next(),
              let e = iterator.next() else {
            fatalError("Not enough elements in base sequence")
        }
        return (a, b, c, d, e)
    }
}

public struct SextupleView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    private var iterator: Base.Iterator
    
    public init(_ base: Base) {
        iterator = base.makeIterator()
    }
    
    public mutating func next() -> Element? {
        guard let a = iterator.next() else {
            return nil
        }
        guard let b = iterator.next(),
              let c = iterator.next(),
              let d = iterator.next(),
              let e = iterator.next(),
              let f = iterator.next() else {
            fatalError("Not enough elements in base sequence")
        }
        return (a, b, c, d, e, f)
    }
}
