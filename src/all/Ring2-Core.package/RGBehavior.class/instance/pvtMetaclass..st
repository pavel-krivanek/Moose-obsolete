private - backend access
pvtMetaclass: anRGMetaclass

	self environment verifyOwnership: anRGMetaclass.

	^ metaclass := anRGMetaclass