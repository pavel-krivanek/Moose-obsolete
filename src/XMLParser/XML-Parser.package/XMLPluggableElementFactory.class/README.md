This class is a pluggable node factory that can also map elements to different XMLElement subclasses based on the name, namespace information, and attributes of those elements. You have to create an instance, configure it to handle certain elements with certain classes, and then inject your instance into a DOM parser using #nodeFactory: before parsing. Here is an example:

	(XMLDOMParser on: anXMLStringOrStream)
		nodeFactory:
			(XMLPluggableElementFactory new
				elementClass: GenericElement;
				handleElement: 'user' withClass: UserElement;
				handleElement: 'report' withClass: ReportElement;
				handleElement: 'report' namespaceURI: 'urn:specialreprot' withClass: SpecialReportElement);
		parseDocument.

Instances can be saved and reused for performance and safely modified after copying.