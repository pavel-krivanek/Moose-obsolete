tests
testElementRenamingToNext
	self newNodeWithElements
		usesNamespaces: false;
		allElementsDo: [:each | | parent oldName oldLocalName nextElement |
			((parent := each parent) notNil
				and: [(nextElement := each nextElement) notNil])
				ifTrue: [
					oldName := each name.
					oldLocalName := each localName.
					
					each name: nextElement name.
					each name = oldName
						ifFalse: [
							self
								deny: ((parent elementAt: oldName) = each);
								deny: ((parent elementsAt: oldName) includes: each)].
					each localName = oldLocalName
						ifFalse: [
							self
								deny: ((parent elementAt: oldLocalName) = each);
								deny: ((parent elementsAt: oldLocalName) includes: each)].
					self
						assert: ((parent elementsAt: each name) after: each) = nextElement;
						assert: ((parent elementsAt: each localName) after: each) = nextElement]].