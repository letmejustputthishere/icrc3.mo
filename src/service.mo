// This is a generated Motoko binding.
// Please use `import service "ic:canister_id"` instead to call canisters on the IC if possible.

module {
  public type DataCertificate = { certificate : [Nat8]; hash_tree : [Nat8] };
  public type GetArchivesArgs = { from : ?Principal };
  public type GetArchivesResult = {
    end : Nat;
    canister_id : Principal;
    start : Nat;
  };
  public type GetBlocksArgs = [{ start : Nat; length : Nat }];
  public type GetBlocksResult = {
    log_length : Nat;
    blocks : [{ id : Nat; block : Value }];
    archived_blocks : [
      {
        args : GetBlocksArgs;
        callback : shared query GetBlocksArgs -> async GetBlocksResult;
      }
    ];
  };
  public type Value = {
    #Int : Int;
    #Map : [(Text, Value)];
    #Nat : Nat;
    #Blob : [Nat8];
    #Text : Text;
    #Array : [Value];
  };
  public type Service = actor {
    icrc3_get_archives : shared query GetArchivesArgs -> async GetArchivesResult;
    icrc3_get_blocks : shared query GetBlocksArgs -> async GetBlocksResult;
    icrc3_get_tip_certificate : shared query () -> async ?DataCertificate;
  }
}
