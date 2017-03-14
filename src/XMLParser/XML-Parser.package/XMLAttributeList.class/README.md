This class represents an ordered list of attribute nodes. It is not the default attribute list class, but it can be used by injecting it into a DOM parser before parsing:
	(parser := XMLDOMParser on: xmlSource)
		nodeFactory:
			(XMLPluggableNodeFactory new
				attributeListClass: XMLAttributeList);
		parseDocument.

It should be used over the default class when you want to reduce memory use at the cost of slower attribute lookup.