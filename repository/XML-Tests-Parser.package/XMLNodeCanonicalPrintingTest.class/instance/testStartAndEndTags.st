tests
testStartAndEndTags
	| xml |

	xml := '<!DOCTYPE doc [<!ATTLIST e9 attr CDATA "default">]>
<doc>
   <e1   />
   <e2   ></e2>
   <e3   name = "elem3"   id="elem3"   />
   <e4   name="elem4"   id="elem4"   ></e4>
   <e5 a:attr="out" b:attr="sorted" attr2="all" attr="I''m"
      xmlns:b="http://www.ietf.org"
      xmlns:a="http://www.w3.org"
      xmlns="http://example.org"/>
   <e6 xmlns="" xmlns:a="http://www.w3.org">
      <e7 xmlns="http://www.ietf.org">
         <e8 xmlns="" xmlns:a="http://www.w3.org">
            <e9 xmlns="" xmlns:a="http://www.ietf.org"/>
         </e8>
      </e7>
   </e6>
</doc>'.

	self assert:
		((XMLDOMParser on: xml)
			isValidating: false;
			parseDocument) canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<doc>'
						'   <e1></e1>'
						'   <e2></e2>'
						'   <e3 id="elem3" name="elem3"></e3>'
						'   <e4 id="elem4" name="elem4"></e4>'
						'   <e5 xmlns="http://example.org" xmlns:a="http://www.w3.org" xmlns:b="http://www.ietf.org" attr="I''m" attr2="all" b:attr="sorted" a:attr="out"></e5>'
						'   <e6 xmlns:a="http://www.w3.org">'
						'      <e7 xmlns="http://www.ietf.org">'
						'         <e8 xmlns="">'
						'            <e9 xmlns:a="http://www.ietf.org" attr="default"></e9>'
						'         </e8>'
						'      </e7>'
						'   </e6>'
						'</doc>')).