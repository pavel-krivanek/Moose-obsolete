forms
applyStereotype: aStereotypeTemplate to: aModelElement
	| stereotype |
	stereotype := OPUMLStereotype new name: aStereotypeTemplate name.
	aStereotypeTemplate ownedAttributes
		do: [ :attr | 
			| copyAttr |
			copyAttr := OPUMLProperty new
				name: attr name;
				owningClass: stereotype;
				type: (OPUMLPrimitiveType new name: attr type name).
			attr defaultValue
				ifNotNil:
					[ copyAttr defaultValue: (attr defaultValue class new value: attr defaultValue value) ] ].
	aModelElement applyStereotype: stereotype