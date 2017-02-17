test follow
testFollowSet11
	|  island1 followSet p root island2 block |

	island1 := ('class' asParser, self identifier) sea.
	island2 := ('extends' asParser, self identifier) sea.
	block := '{}' asParser sea.	

	root := (island1, island2 optional, block) plus.
	
	followSet := self follow: block in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'class'].
	self assert: followSet anySatisfy: [:e | e end matches: ''].
