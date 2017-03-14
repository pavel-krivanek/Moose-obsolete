tests
testUnparsedEntityDeclarationRedundance
	| dtd |

	dtd :=
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test
				name CDATA #IMPIED>
			<!NOTATION external-note SYSTEM "external.txt">
			<!ENTITY external-ent SYSTEM "external.txt" NDATA external-note>
			<!ENTITY external-ent "value">
		]>'.
	#('<test>&external-ent;</test>' '<test name="&external-ent;"></test>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLWellFormednessException].