This is a pluggable node factory that can be used to change which classes the DOM parser uses to build the DOM tree. Here is an example:

	(XMLDOMParser on: anXMLStringOrStream)
		nodeFactory:
			(XMLPluggableNodeFactory new
				documentClass: MyDocumentClass;
				elementClass: MyElementClass;
				stringNodeClass: MyStringNodeClass);
		parseDocument.

Instances can be saved and reused for performance and safely modified after copying.