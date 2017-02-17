private
updateClassDict

	| class |
	self elements do: [:element |
		"(element respondsTo: #fullName) ifTrue: [
		element fullName notNil ifTrue: [
			nameDict at: element fullName put: element ]]."
		element isFM3Class ifTrue: [
			class := self class environment
					at: element defaultClassName
					ifAbsent: [ "Just try with the sole name. Hack"
						self class environment
						at: element name
						ifAbsent: [ nil ] ]. "Assume this is a runtime class"
			class ifNotNil: [
				element setImplementingClass: class.
				classDict at: element implementingClass put: element ]
		].
	 ]