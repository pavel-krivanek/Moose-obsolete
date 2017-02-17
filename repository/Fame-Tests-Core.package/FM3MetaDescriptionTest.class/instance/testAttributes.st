running
testAttributes
	| elem |

	elem := tower metaMetamodel elementNamed: 'FM3.Class'.
	elem attributes notNil should beTrue.
	elem attributes isCollection should beTrue.
	elem attributes isEmpty should beFalse