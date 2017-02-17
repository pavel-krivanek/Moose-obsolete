source
docBookExampleSource
	^ '<!DOCTYPE example
	PUBLIC "-//OASIS//DTD DocBook XML V4.1.2//EN"
	"http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd">
	<example>
		<title>An Example</title>
		<programlisting>
		XMLDocument root:
			((XMLElement named: ''test'')
				addNode: ''An example'' asXMLString;
				yourself)
		</programlisting>
	</example>'