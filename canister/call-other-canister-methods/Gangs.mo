// This is a generated Motoko binding.
// Please use `import service "ic:canister_id"` instead to call canisters on the IC if possible.

module {
  public type AccountIdentifier = Text;
  public type AccountIdentifier__1 = Text;
  public type AccountIdentifier__2 = Text;
  public type AccountIdentifier__3 = Text;
  public type AccountIdentifier__4 = Text;
  public type AccountIdentifier__5 = Text;
  public type AccountIdentifier__6 = Text;
  public type Asset = {
    thumbnail : ?File;
    metadata : ?File;
    name : Text;
    payload : File;
  };
  public type Balance = Nat;
  public type BalanceRequest = { token : TokenIdentifier__2; user : User__1 };
  public type BalanceResponse = { #ok : Balance__2; #err : CommonError__3 };
  public type Balance__1 = Nat;
  public type Balance__2 = Nat;
  public type CanisterCyclesAggregatedData = [Nat64];
  public type CanisterHeapMemoryAggregatedData = [Nat64];
  public type CanisterMemoryAggregatedData = [Nat64];
  public type CanisterMetrics = { data : CanisterMetricsData };
  public type CanisterMetricsData = {
    #hourly : [HourlyMetricsData];
    #daily : [DailyMetricsData];
  };
  public type CommonError = { #InvalidToken : TokenIdentifier; #Other : Text };
  public type CommonError__1 = {
    #InvalidToken : TokenIdentifier__2;
    #Other : Text;
  };
  public type CommonError__2 = {
    #InvalidToken : TokenIdentifier__2;
    #Other : Text;
  };
  public type CommonError__3 = {
    #InvalidToken : TokenIdentifier__2;
    #Other : Text;
  };
  public type DailyMetricsData = {
    updateCalls : Nat64;
    canisterHeapMemorySize : NumericEntity;
    canisterCycles : NumericEntity;
    canisterMemorySize : NumericEntity;
    timeMillis : Int;
  };
  public type Extension = Text;
  public type File = { data : [[Nat8]]; ctype : Text };
  public type GetMetricsParameters = {
    dateToMillis : Nat;
    granularity : MetricsGranularity;
    dateFromMillis : Nat;
  };
  public type HeaderField = (Text, Text);
  public type HourlyMetricsData = {
    updateCalls : UpdateCallsAggregatedData;
    canisterHeapMemorySize : CanisterHeapMemoryAggregatedData;
    canisterCycles : CanisterCyclesAggregatedData;
    canisterMemorySize : CanisterMemoryAggregatedData;
    timeMillis : Int;
  };
  public type HttpRequest = {
    url : Text;
    method : Text;
    body : [Nat8];
    headers : [HeaderField];
  };
  public type HttpResponse = {
    body : [Nat8];
    headers : [HeaderField];
    streaming_strategy : ?HttpStreamingStrategy;
    status_code : Nat16;
  };
  public type HttpStreamingCallbackResponse = {
    token : ?HttpStreamingCallbackToken;
    body : [Nat8];
  };
  public type HttpStreamingCallbackToken = {
    key : Text;
    sha256 : ?[Nat8];
    index : Nat;
    content_encoding : Text;
  };
  public type HttpStreamingStrategy = {
    #Callback : {
      token : HttpStreamingCallbackToken;
      callback : shared () -> async ();
    };
  };
  public type ListRequest = {
    token : TokenIdentifier__1;
    from_subaccount : ?SubAccount;
    price : ?Nat64;
  };
  public type Listing = { locked : ?Time; seller : Principal; price : Nat64 };
  public type Memo = [Nat8];
  public type Metadata = {
    #fungible : {
      decimals : Nat8;
      metadata : ?[Nat8];
      name : Text;
      symbol : Text;
    };
    #nonfungible : { metadata : ?[Nat8] };
  };
  public type Metadata__1 = {
    #fungible : {
      decimals : Nat8;
      metadata : ?[Nat8];
      name : Text;
      symbol : Text;
    };
    #nonfungible : { metadata : ?[Nat8] };
  };
  public type MetricsGranularity = { #hourly; #daily };
  public type NumericEntity = {
    avg : Nat64;
    max : Nat64;
    min : Nat64;
    first : Nat64;
    last : Nat64;
  };
  public type Result = {
    #ok : [(TokenIndex__1, ?Listing, ?[Nat8])];
    #err : CommonError;
  };
  public type Result_1 = { #ok : [TokenIndex__1]; #err : CommonError };
  public type Result_2 = { #ok : Balance__1; #err : CommonError };
  public type Result_3 = { #ok; #err : CommonError__1 };
  public type Result_4 = { #ok; #err : Text };
  public type Result_5 = { #ok : (AccountIdentifier__4, Nat64); #err : Text };
  public type Result_6 = { #ok : Metadata; #err : CommonError };
  public type Result_7 = { #ok : AccountIdentifier; #err : CommonError__1 };
  public type Result_8 = {
    #ok : (AccountIdentifier, ?Listing);
    #err : CommonError__1;
  };
  public type Result_9 = { #ok : AccountIdentifier__5; #err : CommonError__2 };
  public type Sale = {
    expires : Time__1;
    subaccount : SubAccount__2;
    tokens : [TokenIndex__2];
    buyer : AccountIdentifier__4;
    price : Nat64;
  };
  public type SaleSettings = {
    startTime : Time__1;
    whitelist : Bool;
    totalToSell : Nat;
    sold : Nat;
    bulkPricing : [(Nat64, Nat64)];
    whitelistTime : Time__1;
    salePrice : Nat64;
    remaining : Nat;
    price : Nat64;
  };
  public type SaleTransaction = {
    time : Time__1;
    seller : Principal;
    tokens : [TokenIndex__2];
    buyer : AccountIdentifier__4;
    price : Nat64;
  };
  public type Settlement = {
    subaccount : SubAccount;
    seller : Principal;
    buyer : AccountIdentifier;
    price : Nat64;
  };
  public type SubAccount = [Nat8];
  public type SubAccount__1 = [Nat8];
  public type SubAccount__2 = [Nat8];
  public type Time = Int;
  public type Time__1 = Int;
  public type TokenIdentifier = Text;
  public type TokenIdentifier__1 = Text;
  public type TokenIdentifier__2 = Text;
  public type TokenIdentifier__3 = Text;
  public type TokenIdentifier__4 = Text;
  public type TokenIndex = Nat32;
  public type TokenIndex__1 = Nat32;
  public type TokenIndex__2 = Nat32;
  public type Transaction = {
    token : TokenIdentifier__1;
    time : Time;
    seller : Principal;
    buyer : AccountIdentifier;
    price : Nat64;
  };
  public type TransferRequest = {
    to : User;
    token : TokenIdentifier;
    notify : Bool;
    from : User;
    memo : Memo;
    subaccount : ?SubAccount__1;
    amount : Balance;
  };
  public type TransferResponse = {
    #ok : Balance;
    #err : {
      #CannotNotify : AccountIdentifier__1;
      #InsufficientBalance;
      #InvalidToken : TokenIdentifier;
      #Rejected;
      #Unauthorized : AccountIdentifier__1;
      #Other : Text;
    };
  };
  public type UpdateCallsAggregatedData = [Nat64];
  public type User = {
    #principal : Principal;
    #address : AccountIdentifier__1;
  };
  public type User__1 = {
    #principal : Principal;
    #address : AccountIdentifier__6;
  };
  public type Self = actor {
    acceptCycles : shared () -> async ();
    addAsset : shared Asset -> async Nat;
    airdropTokens : shared Nat -> async ();
    allPayments : shared query () -> async [(Principal, [SubAccount])];
    allSettlements : shared query () -> async [(TokenIndex, Settlement)];
    availableCycles : shared query () -> async Nat;
    balance : shared query BalanceRequest -> async BalanceResponse;
    bearer : shared query TokenIdentifier__4 -> async Result_9;
    clearPayments : shared (Principal, [SubAccount]) -> async ();
    collectCanisterMetrics : shared () -> async ();
    cronDisbursements : shared () -> async ();
    cronSalesSettlements : shared () -> async ();
    cronSettlements : shared () -> async ();
    details : shared query TokenIdentifier__1 -> async Result_8;
    extensions : shared query () -> async [Extension];
    failedSales : shared query () -> async [
        (AccountIdentifier__4, SubAccount__2)
      ];
    getCanisterMetrics : shared query GetMetricsParameters -> async ?CanisterMetrics;
    getMinter : shared query () -> async Principal;
    getRegistry : shared query () -> async [
        (TokenIndex__1, AccountIdentifier__2)
      ];
    getTokenToAssetMapping : shared query () -> async [(TokenIndex__1, Text)];
    getTokens : shared query () -> async [(TokenIndex__1, Metadata)];
    http_request : shared query HttpRequest -> async HttpResponse;
    http_request_streaming_callback : shared query HttpStreamingCallbackToken -> async HttpStreamingCallbackResponse;
    initCap : shared () -> async Result_4;
    initMint : shared () -> async ();
    list : shared ListRequest -> async Result_3;
    listings : shared query () -> async [(TokenIndex, Listing, Metadata__1)];
    lock : shared (
        TokenIdentifier__1,
        Nat64,
        AccountIdentifier,
        SubAccount,
      ) -> async Result_7;
    metadata : shared query TokenIdentifier__3 -> async Result_6;
    payments : shared query () -> async ?[SubAccount];
    pendingCronJobs : shared query () -> async [Nat];
    reserve : shared (
        Nat64,
        Nat64,
        AccountIdentifier__4,
        SubAccount__2,
      ) -> async Result_5;
    retreive : shared AccountIdentifier__4 -> async Result_4;
    saleTransactions : shared query () -> async [SaleTransaction];
    salesSettings : shared query AccountIdentifier__3 -> async SaleSettings;
    salesSettlements : shared query () -> async [(AccountIdentifier__4, Sale)];
    setMinter : shared Principal -> ();
    setTotalToSell : shared () -> async Nat;
    settle : shared TokenIdentifier__1 -> async Result_3;
    settlements : shared query () -> async [
        (TokenIndex, AccountIdentifier, Nat64)
      ];
    shuffleAssets : shared () -> async ();
    shuffleTokensForSale : shared () -> async ();
    stats : shared query () -> async (
        Nat64,
        Nat64,
        Nat64,
        Nat64,
        Nat,
        Nat,
        Nat,
      );
    streamAsset : shared (Nat, Bool, [Nat8]) -> async ();
    supply : shared query () -> async Result_2;
    toAddress : shared query (Text, Nat) -> async AccountIdentifier__3;
    tokens : shared query AccountIdentifier__2 -> async Result_1;
    tokens_ext : shared query AccountIdentifier__2 -> async Result;
    transactions : shared query () -> async [Transaction];
    transfer : shared TransferRequest -> async TransferResponse;
    updateThumb : shared (Text, File) -> async ?Nat;
    viewDisbursements : shared query () -> async [
        (TokenIndex, AccountIdentifier, SubAccount, Nat64)
      ];
  }
}
