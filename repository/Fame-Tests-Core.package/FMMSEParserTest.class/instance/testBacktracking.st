running
testBacktracking
	| pos |
	p fromString: 'abcdefg'.
	p peek should = $a.
	p next should = $b.
	pos := p pos.
	p peek should = $b.
	p next should = $c.
	p next should = $d.
	p next should = $e.
	p backtrack: pos.
	p peek should = $b.
	p next should = $c.
	p next should = $d.
	p next should = $e