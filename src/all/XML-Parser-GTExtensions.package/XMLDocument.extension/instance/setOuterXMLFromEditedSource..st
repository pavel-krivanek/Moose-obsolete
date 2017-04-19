*XML-Parser-GTExtensions
setOuterXMLFromEditedSource: aString
	| newDocument |

	[newDocument :=
		(self parserHandlerClass on: aString)
			configuration: self configuration;
			parseDocument]
		on: Error
		do: [:error |
			newDocument := nil.
			error pass].
	newDocument
		ifNotNil: [
			self
				removeNodes;
				configuration: newDocument configuration;
				version: newDocument version;
				encoding: newDocument encoding;
				isStandalone: newDocument isStandalone;
				doctypeDeclaration: newDocument doctypeDeclaration;
				doctypeDefinition: newDocument doctypeDefinition;
				addNodes: newDocument nodes copy].
	^ self.