pragma experimental SMTChecker;

contract LoopFor2 {
	function testUnboundedForLoop(uint n, uint[] memory b, uint[] memory c) public pure {
		require(n < b.length);
		require(n < c.length);
		require(n > 0 && n < 100);
		b[0] = 900;
		uint[] memory a = b;
		for (uint i = 0; i < n; i += 1) {
			// Accesses are safe but oob is reported due to potential aliasing after c's assignment.
			b[i] = i + 1;
			c[i] = b[i];
		}
		// Removed because current Spacer seg faults in cex generation.
		//assert(b[0] == c[0]);
		// Removed because current Spacer seg faults in cex generation.
		//assert(a[0] == 900);
		// Removed because current Spacer seg faults in cex generation.
		//assert(b[0] == 900);
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 2072: (235-250): Unused local variable.
// Warning 6368: (387-391): CHC: Out of bounds access happens here.
// Warning 6368: (411-415): CHC: Out of bounds access happens here.
// Warning 6368: (404-408): CHC: Out of bounds access happens here.
