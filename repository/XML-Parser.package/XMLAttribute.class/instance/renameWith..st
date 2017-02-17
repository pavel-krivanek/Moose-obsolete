private
renameWith: aBlock
	| oldName |

	oldName := self name.
	aBlock value.
	(self name ~= oldName
		and: [self hasParent])
			ifTrue: [
				self parent
					renamedAttribute: self
					from: oldName
					to: self name].