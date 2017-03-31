tests
testCharacterReferences
	| xml |

	xml := '<!DOCTYPE doc [
<!ATTLIST normId id ID #IMPLIED>
<!ATTLIST normNames attr NMTOKENS #IMPLIED>
]>
<doc>
   <text>First line&#x0d;&#10;Second line</text>
   <value>&#x32;</value>
   <compute><![CDATA[value>"0" && value<"10" ?"valid":"error"]]></compute>
   <compute expr=''value>"0" &amp;&amp; value&lt;"10" ?"valid":"error"''>valid</compute>
   <norm attr='' &apos;   &#x20;&#13;&#xa;&#9;   &apos; ''/>
   <normNames attr=''   A   &#x20;&#13;&#xa;&#9;   B   ''/>
   <normId id='' &apos;   &#x20;&#13;&#xa;&#9;   &apos; ''/>
</doc>'.

	self assert:
		((XMLDOMParser on: xml)
			isValidating: false;
			parseDocument) canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<doc>'
						'   <text>First line&#xD;'
						'Second line</text>'
						'   <value>2</value>'
						'   <compute>value&gt;"0" &amp;&amp; value&lt;"10" ?"valid":"error"</compute>'
						'   <compute expr="value>&quot;0&quot; &amp;&amp; value&lt;&quot;10&quot; ?&quot;valid&quot;:&quot;error&quot;">valid</compute>'
						'   <norm attr=" ''    &#xD;&#xA;&#x9;   '' "></norm>'
						'   <normNames attr="A &#xD;&#xA;&#x9; B"></normNames>'
						'   <normId id="'' &#xD;&#xA;&#x9; ''"></normId>'
						'</doc>')).