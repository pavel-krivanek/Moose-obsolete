*petitgui-utilities
checkCompositeParser: aClass
	^ (RBCondition isMetaclass: aClass) not
	"&  RBCondition isSubclass: class of: self compositeParserClass"
	& (RBCondition new
		type: (Array with: #subclass with: self compositeParserClass with: aClass)
		block: [ aClass includesClass: self compositeParserClass ]
		errorString: aClass printString , ' is <1?:not >a subclass of ' , self compositeParserClass printString)