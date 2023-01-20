import Array "mo:base/Array";

module utils {
    public func second_maximum(array : [Int]) : Int {
        if (array.size() < 2) return array[0];
        var max : Int = array[0];
        var second : Int = array[0];
        for (n in array.vals()) {
            if (n > max) {
                second := max;
                max := n;
            } else if (n != max and n > second) {
                second := n;
            } else if (max == second and n < second) {
                second := n;
            };
        };
        return second;
    };

    public func is_even(x : Nat) : Bool {
        if (x % 2 == 0) return true;
        return false;
    };

    public func remove_even(array : [Nat]) : [Nat] {
        Array.filter<Nat>(array, is_even);
    };

    public func drop<T>(xs : [T], n : Nat) : [T] {
        var size : Nat = xs.size();
        var expectedSize : Nat = size - n;
        Array.filter<T>(
            xs,
            func(e) {
                if (size > expectedSize) {
                    size := size -1;
                    return false;
                } else {
                    return true;
                };
            },

        );
    };

};
