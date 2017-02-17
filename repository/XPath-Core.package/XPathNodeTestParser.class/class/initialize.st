class initialization
initialize 
	"self initialize"

	"assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	NodeTypeTestParserSelectors :=
		Dictionary new
			at: 'comment' put: #nextCommentTest;
			at: 'text' put: #nextTextTest;
			at: 'processing-instruction' put: #nextPITest;
			at: 'node' put: #nextAnyNodeTest;
			at: 'element' put: #nextElementTest;
			at: 'attribute' put: #nextAttributeTest;
			at: 'namespace' put: #nextNamespaceTest;
			yourself