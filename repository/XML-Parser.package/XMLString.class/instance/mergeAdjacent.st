splitting/merging
mergeAdjacent
	"merges a string node with adjacent string nodes in parent"
	| siblingNodes selfIndex adjacentNode |

	self hasParent
		ifFalse: [^ self].

	siblingNodes := self parent nodes.
	selfIndex := siblingNodes indexOf: self.
	[(adjacentNode := siblingNodes at: selfIndex + 1) notNil
		and: [adjacentNode isStringNode]]
		whileTrue: [
			self append: adjacentNode.
			siblingNodes removeAt: selfIndex + 1].

	[(adjacentNode := siblingNodes at: selfIndex - 1) notNil
		and: [adjacentNode isStringNode]]
		whileTrue: [
			self prepend: adjacentNode.
			siblingNodes removeAt: selfIndex - 1.
			selfIndex := selfIndex - 1].