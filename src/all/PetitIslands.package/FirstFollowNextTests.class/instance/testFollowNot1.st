test follow
testFollowNot1
	| p followSet terminal |

	terminal := 'a' asParser.
	p := terminal, 'b' asParser not.
	followSet := self follow: terminal in: p.
	
	self assert: followSet anySatisfy: [:e | e matches: 'c' ].
	self assert: followSet anySatisfy: [:e | (e matches: 'b') not ].