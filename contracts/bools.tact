import "@stdlib/deploy";

contract Bools with Deployable {

    b1: Bool = true;
    b2: Bool = false;
    b3: Bool;

    init() {
        self.b3 = !self.b2;        
    }

    receive("show operations") {
        let b: Bool = true;

        b = self.b1 && self.b2 || !self.b3;
        dump(b);
    }
}
