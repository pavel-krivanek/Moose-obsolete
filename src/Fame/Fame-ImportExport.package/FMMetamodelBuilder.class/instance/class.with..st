DSL
class: name with: aBlock

	self new: 'FM3.Class' with: [
		stack addLast: name.
		self id: self nextSerial.
		self add: 'name' with: name.
		self add: 'attributes' with: aBlock.
		stack removeLast. ].