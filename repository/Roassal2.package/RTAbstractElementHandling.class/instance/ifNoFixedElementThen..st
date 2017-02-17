private - configuration
ifNoFixedElementThen: aBlock
	fixedElement ifNil: [ aBlock value  ]