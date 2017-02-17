This is a node list that caches child elements by name, keeping both an ordered list of elements and a dictionary that allows for faster retrieval of elements by qualified or local name. To use it, inject it into a DOM parser before parsing:
	(parser := XMLDOMParser on: xmlSource)
		nodeFactory:
			(XMLPluggableNodeFactory new
				nodeListClass: XMLCachingNodeList);
		parseDocument.

It should only be used when you know the DOM tree will be queried much more often than parsed or modified and the extra memory use is OK.