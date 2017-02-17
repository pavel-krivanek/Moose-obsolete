tests
testAttributeRenaming
	| elementWithAttributes attributeNodes attributeNode oldSize oldNames oldName |

	elementWithAttributes := self newElementWithAttributes.
	attributeNodes := elementWithAttributes attributeNodes.

	attributeNode := attributeNodes first.
	oldSize := attributeNodes size.
	oldNames := elementWithAttributes attributeNames.
	oldName := attributeNode name.
	attributeNode name: 'newName'.
	self
		assert: attributeNodes size = oldSize;
		assert: attributeNodes first == attributeNode;
		assert: elementWithAttributes attributeNames = (oldNames allButFirst copyWithFirst: 'newName');
		deny: (elementWithAttributes includesAttribute: oldName);
		assert: (elementWithAttributes attributeNodeAt: 'newName') == attributeNode.

	oldNames := elementWithAttributes attributeNames.
	oldName := attributeNode name.
	attributeNode name: oldNames last.
	self
		assert: attributeNodes size = (oldSize - 1);
		assert: attributeNodes first == attributeNode;
		assert:
			elementWithAttributes attributeNames =
				((oldNames copyFrom: 2 to: oldNames size - 1) copyWithFirst: oldNames last);
		deny: (elementWithAttributes includesAttribute: oldName);
		assert: (elementWithAttributes attributeNodeAt: attributeNode name) == attributeNode.