tests
testNumber
	| metaDescription annotationDescription instance |
	metaDescription := FM3MetaDescription new.
	annotationDescription := MTLAnnotationDescription new
		name: #something;
		type: FM3 number;
		yourself.
	metaDescription attributes add: annotationDescription.
	instance := MooseEntity new.
	instance mmSetProperty: annotationDescription to: 42.
	self assert: (instance mmGetProperty: annotationDescription) equals: 42.
	self assert: (instance readUsing: annotationDescription asMagritteDescription) equals: 42