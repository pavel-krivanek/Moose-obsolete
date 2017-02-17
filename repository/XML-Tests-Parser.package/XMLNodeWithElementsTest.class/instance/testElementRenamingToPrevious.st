tests
testElementRenamingToPrevious
	self newNodeWithElements
		usesNamespaces: false;
		allElementsDo: [:each | | parent oldName oldLocalName previousElement |
			((parent := each parent) notNil
				and: [(previousElement := each previousElement) notNil])
				ifTrue: [
					oldName := each name.
					oldLocalName := each localName.
					
					each name: previousElement name.
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
						assert: ((parent elementsAt: each name) before: each) = previousElement;
						assert: ((parent elementsAt: each localName) before: each) = previousElement]].