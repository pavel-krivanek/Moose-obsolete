tests
testPIsAndComments
	| xml |

	xml := '<?xml version="1.0"?>

<?xml-stylesheet   href="doc.xsl"
   type="text/xsl"   ?>

<!DOCTYPE doc SYSTEM "doc.dtd">

<doc>Hello, world!<!-- Comment 1 --></doc>

<?pi-without-data     ?>

<!-- Comment 2 -->

<!-- Comment 3 -->'.

	self assert:
		(XMLDOMParser parse: xml)
			canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<?xml-stylesheet href="doc.xsl"'
						'   type="text/xsl"   ?>'
						'<doc>Hello, world!</doc>'
						'<?pi-without-data?>')).

	self assert:
		((XMLDOMParser on: xml)
			preservesCommentNodes: true;
			parseDocument) canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<?xml-stylesheet href="doc.xsl"'
						'   type="text/xsl"   ?>'
						'<doc>Hello, world!<!-- Comment 1 --></doc>'
						'<?pi-without-data?>'
						'<!-- Comment 2 -->'
						'<!-- Comment 3 -->')).