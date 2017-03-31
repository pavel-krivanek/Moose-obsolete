source
generalEntityXMLSource
	^ '
	<!DOCTYPE root [
		<!ENTITY % firstDeclaration "<!ENTITY first &#39; &second; &#39;>">
		%firstDeclaration;
		<!ENTITY second " replacement ">
	]>
	<root name="&second;">&first;</root>'