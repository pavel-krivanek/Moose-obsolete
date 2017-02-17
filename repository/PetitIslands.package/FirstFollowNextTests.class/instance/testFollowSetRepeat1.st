test follow
testFollowSetRepeat1
	| p followSet terminal |

	terminal := 'a' asParser.
	p := terminal plus.
	
	followSet := self follow: terminal in: p.
	self assert: followSet anySatisfy: [:e | e end matches: 'a' ].
	self assert: followSet anySatisfy: [:e | e end matches: '' ].

	followSet := self follow: p in: p.
	self assert: followSet anySatisfy: [:e | e end matches: '' ].
