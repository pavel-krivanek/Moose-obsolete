test follow
testFollowSetChoice2
	| result p root followSet follow b c |

	follow := 'a' asParser / 'd' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	p := b / c.
	
	root := p, follow.

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | (e parse: 'a') isPetitFailure not].
	self assert: followSet anySatisfy: [:e | (e parse: 'd') isPetitFailure not].

	followSet := self follow: p in: root.
	
	self assert: followSet anySatisfy: [:e | (e parse: 'a') isPetitFailure not].
	self assert: followSet noneSatisfy: [:e | (e parse: 'c') isPetitFailure not].
