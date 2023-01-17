actor {
  public func multiply(n : Nat, m : Nat) : async Nat {
    var result = m * n;
    return result;
  };

  public func volume(n : Nat) : async Nat {
    var result = n * n * n;
    return result;
  };
  public func hours_to_minutes(n : Nat) : async Nat {
    var result = n * 60;
    return result;
  };
  var counter = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
  };
  public func get_counter() : async Nat {
    return counter;
  };
  public func test_divide(n : Nat, m : Nat) : async Bool {
    if (m % n == 0) {
      return true;
    } else {
      return false;
    };
  };
  public func is_even(n : Nat) : async Bool {
    if (n % 2 == 0) {
      return true;
    } else {
      return false;
    };
  };
};
