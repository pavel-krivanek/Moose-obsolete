tests
testEntityReferences
	| xml resolver |

	xml := '<!DOCTYPE doc [
<!ATTLIST doc attrExtEnt ENTITY #IMPLIED>
<!ENTITY ent1 "Hello">
<!ENTITY ent2 SYSTEM "world.txt">
<!ENTITY entExt SYSTEM "earth.gif" NDATA gif>
<!NOTATION gif SYSTEM "viewgif.exe">
]>
<doc attrExtEnt="entExt">
   &ent1;, &ent2;!
</doc>

<!-- Let world.txt contain "world" (excluding the quotes) --> '.

	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'world.txt'
		put: 'world'.
	self assert:
		((XMLDOMParser on: xml)
			externalEntityResolver: resolver copy;
			resolvesExternalEntities: true;
			isValidating: false;
			parseDocument) canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<doc attrExtEnt="entExt">'
						'   Hello, world!'
						'</doc>')).

	self assert:
		((XMLDOMParser on: xml)
			externalEntityResolver: resolver copy;
			resolvesExternalEntities: true;
			isValidating: false;
			preservesCommentNodes: true;
			parseDocument) canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<doc attrExtEnt="entExt">'
						'   Hello, world!'
						'</doc>'
						'<!-- Let world.txt contain "world" (excluding the quotes) -->')).