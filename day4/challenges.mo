import List "mo:base/List";
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";
import Option "mo:base/Option";

actor {
    func reverse<T>(l : List.List<T>) : List.List<T> {
        List.reverse<T>(l);
    };

    public shared ({ caller }) func is_anynomous() : async Bool {
        Principal.equal(caller, Principal.fromText("2vxsx-fae"));
    };
    func find_in_buffer<T>(buf : Buffer.Buffer<T>, val : T, equal : (T, T) -> Bool) : async Nat {
        Option.get(Buffer.indexOf<T>(val, buf, equal), buf.size() +1);
    };

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
        usernames.put(caller, name);
    };

    public query func get_usernames() : async [(Principal, Text)] {
        return (Iter.toArray(usernames.entries()));
    };
};
