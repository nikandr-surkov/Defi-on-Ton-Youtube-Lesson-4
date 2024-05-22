import "@stdlib/deploy";

contract Integers with Deployable {

    i1: Int as int257 = 3001;         // range -2^256 to 2^256 - 1
    i2: Int as uint256;               // range 0 to 2^256 - 1
    i3: Int as int256 = 17;           // range -2^255 to 2^255 - 1
    i4: Int as uint128;               // range 0 to 2^128 - 1
    i5: Int as int128;                // range -2^127 to 2^127 - 1
    i6: Int as coins;                 // range 0 to 2^120 - 1
    i7: Int as uint64 = 0x1c4a;       // range 0 to 18,446,744,073,709,551,615
    i8: Int as int64 = -203;          // range -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
    i9: Int as uint32 = 0;            // range 0 to 4,294,967,295
    i10: Int as int32 = 0;            // range -2,147,483,648 to 2,147,483,647
    i11: Int as uint16 = 0;           // range 0 to 65,535
    i12: Int as int16 = 0;            // range -32,768 to 32,767
    i13: Int as uint8 = 0;            // range 0 to 255
    i14: Int as int8 = 0;             // range -128 to 127 

    a1: Int as uint128 = 3001;
    a2: Int as int32 = 57;

    init() {
        self.i2 = 0x475a74b1c;
        self.i4 = 483938578393;
        self.i5 = pow(10, 9);
        self.i6 = ton("1.23");        // = 1,230,000,000        
    }

    receive("show operations") {
        let i: Int = -12;             // type is int257

        i = self.a1 * 3 + (self.a2 - i);

        i = self.a1 % 10;

        i = self.a1 / 1000;

        i = self.a1 >> 3;

        i = self.a1 << 2;

        i = min(self.a2, 11);

        i = max(self.a2, 66);

        i = abs(-1 * self.a2);
        dump(i);
    }

}
