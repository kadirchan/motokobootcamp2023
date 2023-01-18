import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor {

    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for (value in array.vals()) {
            sum += value;
        };
        return sum / array.size();
    };

    public func count_character(t : Text, c : Char) : async Nat {
        var count : Nat = 0;
        for (ch in t.chars()) {
            if (ch == c) {
                count += 1;
            };
        };
        return count;
    };
    public func factorial(n : Nat) : async Nat {
        if (n == 0) return 1;
        var factorial = 1;
        var i = 1;
        while (i <= n) {
            factorial *= i;
            i += 1;
        };
        return factorial;
    };

    public func number_of_words(t : Text) : async Nat {
        var count = 0;
        for (ch in t.chars()) {
            if (ch == ' ') {
                count += 1;
            };
        };
        if (count > 0) count += 1;
        return count;
    };
    public func find_duplicates(a : [Nat]) : async [Nat] {
        let arraySize : Nat = a.size();
        var buff = Buffer.Buffer<Nat>(0);
        var it_first = Iter.range(0, arraySize -1);
        var tmp : Nat = 0;
        for (i in it_first) {
            var it_second = Iter.range(i +1, arraySize -1);
            for (j in it_second) {
                if (a[i] == a[j]) {
                    var flag : Bool = false;
                    for (element in buff.vals()) {
                        if (element == a[i]) {
                            flag := true;
                        };
                    };
                    if (flag != true) { buff.add(a[i]) }

                };
            };
        };

        return buff.toArray();
    };
    public func convert_to_binary(n : Nat) : async Text {
        var i : Nat = 0;
        var number : Nat = n;
        var txt : Text = "";

        while (number > 0) {
            i := number % 2;
            txt := Nat.toText(i) #txt;
            number := number / 2;
        };

        return txt;
    };
};
