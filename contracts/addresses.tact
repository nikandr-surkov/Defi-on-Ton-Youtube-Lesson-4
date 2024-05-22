import "@stdlib/deploy";

contract Addresses with Deployable {

    a1: Address = address("EQDtFpEwcFAEcRe5mLVh2N6C0x-_hJEM7W61_JLnSF74p4q2");
    a2: Address = address("UQDtFpEwcFAEcRe5mLVh2N6C0x-_hJEM7W61_JLnSF74p9dz");
    a3: Address;

    a4: Address;
    a5: Address;
    a6: Address;

    init() {

        self.a3 = newAddress(0, 0xed1691307050047117b998b561d8de82d31fbf84910ced6eb5fc92e7485ef8a7);

        self.a4 = newAddress(0, 0);        // the zero address
        self.a5 = myAddress();             // address of this contract
        self.a6 = sender();                // address of the deployer (the sender during init())
        
    }

    get fun addressChecker1(): Bool {
        return(self.a1 == self.a2);
    }

    get fun addressChecker2(): Bool {
        return(self.a2 == self.a3);
    }

    get fun addressChecker3(): Bool {
        return(self.a3 == self.a4);
    }
}
