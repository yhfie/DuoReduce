pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		uint y = 200;
		y -= y - x;
		assert(y >= 0);
		assert(y < 90);
	}
}
// ----
// Warning 6328: (150-164): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 90\ny = 90\n\nTransaction trace:\nC.constructor()\nC.f(90)
