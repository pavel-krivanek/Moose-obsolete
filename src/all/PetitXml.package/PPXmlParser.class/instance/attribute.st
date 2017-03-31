grammar
attribute
	^ super attribute ==> [ :nodes | PPXmlAttribute name: nodes first value: nodes second ]