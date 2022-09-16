extension Sequence {
    public var couples: CouplesView<Self> {
        .init(iterator: self.makeIterator())
    }
    
    public var triples: TriplesView<Self> {
        .init(iterator: self.makeIterator())
    }
    
    public var quadruples: QuadruplesView<Self> {
        .init(iterator: self.makeIterator())
    }
    
    public var quintuples: QuintuplesView<Self> {
        .init(iterator: self.makeIterator())
    }
    
    public var sextuples: SextuplesView<Self> {
        .init(iterator: self.makeIterator())
    }
}

public struct CouplesView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    var iterator: Base.Iterator
    
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

public struct TriplesView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    var iterator: Base.Iterator
    
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

public struct QuadruplesView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    var iterator: Base.Iterator
    
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

public struct QuintuplesView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    var iterator: Base.Iterator
    
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

public struct SextuplesView<Base: Sequence>: IteratorProtocol, Sequence {
    public typealias Element = (
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element,
        Base.Iterator.Element
    )
    
    var iterator: Base.Iterator
    
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
