private
renameWith: aBlock
	| oldName |

	oldName := self name.
	aBlock value.
	self name = oldName
		ifFalse: [
			self validateNamespacePrefix.
			self hasParent
				ifTrue: [
					self parent
						renamedElement: self
						from: oldName
						to: self name]].