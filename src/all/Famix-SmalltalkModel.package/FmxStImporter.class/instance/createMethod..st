private-entity-creation
createMethod: aCompiledMethod
	| method thisClass anchor |
	method := methods at: aCompiledMethod put: FmxStMethod new.
	method name: aCompiledMethod selector.
	thisClass := aCompiledMethod methodClass.
	method parentType: (self ensureClass: thisClass).
	method signature: aCompiledMethod signature.
	"here we have two possibilities for the parentPackage of the method: 
	=> the method belong to a package extension, we should refer to this extending packages 
	=> if not, we should not refer to package of the class"
	"parentPackage := aCompiledMethod methodClass package."
	aCompiledMethod methodClass extendingPackages
		do: [ :aRPackage | 
			(aCompiledMethod isExtensionInPackage: aRPackage)
				ifTrue: [ method parentPackage: (self ensurePackage: aRPackage) ] ].
	method hasClassScope: aCompiledMethod methodClass isMeta.
	method
		category:
			(aCompiledMethod methodClass organization
				categoryOfElement: aCompiledMethod selector).
	method isPublic: true.
	method timeStamp: aCompiledMethod timeStamp.
	importingContext shouldImportMethodBody
		ifTrue: [ | visitor |
			visitor := SmalltalkMethodVisitor on: self.
			visitor runWith: aCompiledMethod and: method ].
	anchor := FmxStSourceAnchor new
		element: method;
		pharoEntity: aCompiledMethod;
		yourself.
	method sourceAnchor: anchor.
	self addEntity: anchor.
	^ method