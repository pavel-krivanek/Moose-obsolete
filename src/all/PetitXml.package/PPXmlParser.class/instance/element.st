grammar
element
	^ super element ==> [ :nodes | PPXmlElement name: nodes first attributes: nodes second children: nodes third ]