class MinStack {
    private var array = [Int]()

    init(_ items: [Int]) {
        self.array = items
    }

    init() { }

    func push(_ val: Int) {
        array.append(val)
    }

    func pop() {
        array.popLast()
    }

    func top() -> Int {
        if array.isEmpty { return 0 }
        return array.last ?? 0
    }

    func getMin() -> Int {
        if array.isEmpty { return 0 }
        return array.min() ?? 0
    }
}
