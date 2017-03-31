test follow
testFollowSetChoice1
	| result p root followSets followSet follow |

	p := 'a' asParser.
	follow := 'b' asParser / 'c' asParser .
	
	root := p, follow.

	followSet := self follow: p in: root.
	
	self assert: followSet anySatisfy: [:e | (e parse: 'b') isPetitFailure not].
	self assert: followSet anySatisfy: [:e | (e parse: 'c') isPetitFailure not].
	self assert: followSet noneSatisfy: [:e | (e parse: 'a') isPetitFailure not].
