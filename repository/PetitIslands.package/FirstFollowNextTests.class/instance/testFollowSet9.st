test follow
testFollowSet9
	|  island1 followSet p root island2 block |

	island1 := ('class' asParser, self identifier) sea.
	island2 := (':' asParser, self identifier) sea.
	block := '{' asParser, '}' asParser sea.	

	root := (island1, island2 optional, block) sea.
	
	followSet := self follow: island1 in: root.

	self assert: followSet anySatisfy: [:e | e end matches: '{'].
	self assert: followSet anySatisfy: [:e | e end matches: ':'].
