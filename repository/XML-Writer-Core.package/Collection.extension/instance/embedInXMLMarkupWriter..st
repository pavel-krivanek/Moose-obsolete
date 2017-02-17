*XML-Writer-Core
embedInXMLMarkupWriter: aMarkupWriter
	self do: [:each | each embedInXMLMarkupWriter: aMarkupWriter]