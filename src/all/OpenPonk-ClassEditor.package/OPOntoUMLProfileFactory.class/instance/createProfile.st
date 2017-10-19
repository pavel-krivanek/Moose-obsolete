actions
createProfile
	| profile classMetaclass sortals mixins associationMetaclass associations moments |
	profile := OPUMLProfile new
		name: 'OntoUML v0.0';
		uuid: '_0';
		URI: 'http://www.example.com/OntoUML/0.0'.
	classMetaclass := OPUMLClass new name: 'Class'.
	sortals := #(Kind Quantity Collective SubKind Phase Role).
	mixins := #(RoleMixin Mixin Category).
	moments := #(Relator Mode Quality).
	(sortals , mixins , moments) sorted
		do:
			[ :each | profile packagedElements addAll: (self newStereotype: each to: classMetaclass) ].
	associationMetaclass := OPUMLClass new name: 'Association'.
	associations := {#related -> #(Formal Material).
	#dependency -> #(Characterization Mediation Derivation).
	#meronymic -> #(subQuantityOf subCollectionOf memberOf componentOf)} asOrderedDictionary.
	associations values
		do: [ :arr | 
			arr sorted
				do:
					[ :each | profile packagedElements addAll: (self newStereotype: each to: associationMetaclass) ] ].
	(associations at: #meronymic)
		do: [ :each | 
			| cls |
			cls := profile packagedElements detect: [ :e | e name = each ].
			OPUMLProperty new
				name: 'essential';
				uuid: cls uuid , '-essential';
				owningClass: cls;
				type: (OPUMLPrimitiveType new name: 'Boolean');
				defaultValue:
					(OPUMLLiteralBoolean new
						value: false;
						uuid: cls uuid , '-essential-_defaultValue').
			OPUMLProperty new
				name: 'inseparable';
				uuid: cls uuid , '-inseparable';
				owningClass: cls;
				type: (OPUMLPrimitiveType new name: 'Boolean');
				defaultValue:
					(OPUMLLiteralBoolean new
						value: false;
						uuid: cls uuid , '-inseparable-_defaultValue') ].
	^ profile