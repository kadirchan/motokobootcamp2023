import List "mo:base/List";
import Principal "mo:base/Principal";

actor {
    func reverse<T>(l : List.List<T>) : List.List<T> {
        List.reverse<T>(l);
    };

    public shared ({ caller }) func is_anynomous() : async Bool {
        Principal.equal(caller, Principal.fromText("2vxsx-fae"));
    };

};
