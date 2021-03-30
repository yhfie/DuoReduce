pragma experimental SMTChecker;

contract C
{
	uint[] a;
	constructor() { init(); }
	function init() internal {
		a.push();
		a.push();
		a.push();
	}
	function g() internal {
		delete a;
	}
	function h() internal {
		delete a[2];
	}
	function f(bool b) public {
		a[2] = 3;
		require(b);
		if (b)
			g();
		else
			h();
		init();
		assert(a[2] == 0);
		assert(a[1] == 0);
	}
}
// ----
// Warning 6838: (295-296): BMC: Condition is always true.
