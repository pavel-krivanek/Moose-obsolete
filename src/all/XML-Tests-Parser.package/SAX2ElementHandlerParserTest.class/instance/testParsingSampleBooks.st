tests
testParsingSampleBooks
	"Basic factory-style parsing, with one factory for the entire document"

	| books |

	books :=
		(SAX2ElementParser on: self sampleBooksXML)
			elementHandlerFactory:
				(SAX2PluggableElementHandlerFactory new
					handleElement: 'books' withClass: SAX2HBooksElementHandler;
					handleElement: 'book' withClass: SAX2HBookElementHandler;
					handleElement: 'title' withClass: SAX2HTitleElementHandler;
					handleElement: 'isbn' withClass: SAX2HISBNElementHandler;
					handleElement: 'author' withClass: SAX2HAuthorElementHandler);
			parseDocument.

	self
		assert: books class == OrderedCollection;
		assert: books size = 2;
		assert: books first class == SAX2SampleBook;
		assert: books first title = 'Smalltalk-80: The Language and its Implementation';
		assert: books first isbn = '0201113716';
		assert: books first authors asArray = #('Adele Goldberg' 'David Robson');
		assert: books second class == SAX2SampleBook;
		assert: books second title = 'Pharo By Example';
		assert: books second isbn = '3952334146';
		assert:
			books second authors asArray =
				#('Andrew P. Black'
					'Stephane Ducasse'
					'Oscar Nierstrasz'
					'Damien Pollet'
					'Damien Cassou'
					'Marcus Denker').