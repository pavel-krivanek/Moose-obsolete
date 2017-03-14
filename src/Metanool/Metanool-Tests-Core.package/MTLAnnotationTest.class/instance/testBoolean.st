tests
testBoolean
	| metaDescription annotationDescription instance |
	metaDescription := FM3MetaDescription new.
	annotationDescription := MTLAnnotationDescription new
		name: #something;
		type: FM3 boolean;
		yourself.
	metaDescription attributes add: annotationDescription.
	instance := MooseEntity new.
	instance mmSetProperty: annotationDescription to: false.
	self assert: (instance mmGetProperty: annotationDescription) equals: false.
	self assert: (instance readUsing: annotationDescription asMagritteDescription) equals: false