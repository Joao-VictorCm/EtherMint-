import Principal "mo:base/Principal";
import Nat "mo:base/Nat";
import HashMap "mo:base/HashMap";


actor Token {

  var owner : Principal = Principal.fromText("o3n4y-qm3bf-gb7rc-fxin4-uxqmv-w74rf-ulrnq-76p2u-ppnq3-64jd3-6ae");
  var totalSupply : Nat = 1000000000;
  var symbol : Text = "DRG";

  var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
  balances.put(owner, totalSupply);

  public query func balanceOf()
};
