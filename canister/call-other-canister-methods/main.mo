import Principal "mo:base/Principal";
import Gangs "Gangs"; //motoko binding file on ICscan

actor {
    public func checkGangsHolder(pid: Principal) : async Nat {
        let gangs = actor("2x3lw-tiaaa-aaaah-qcvca-cai"): Gangs.Self;
        return await gangs.balanceOf(pid) ;
    };
};
