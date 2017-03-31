DSL
package: name with: aBlock

	self new: 'FM3.Package' with: [
		stack addLast: name.
		self add: 'name' with: name.
		self add: 'classes' with: aBlock.
		stack removeLast ].