hooks
execute

GTPlayground openContents: '
"Press the Play green button, on the top right on this window to see this script in action"

| fileName doc allChildren b |
fileName := UIManager default chooseFullFileNameMatching: #(''*.xml'') label: ''Pick a XML file''.
fileName ifNil: [ ^ self ].

doc := PPXmlParser parse: fileName asFileReference contents.

allChildren := OrderedCollection new.
doc nodesDo: [ :n | allChildren add: n ].


b := RTMondrian new.
b shape circle 
	size: 15;
	color: Color blue trans;
	if: [ :n | n class == PPXmlText and: [ n data lines includes: ''        Type: OUTPUT'' ]] fillColor: Color red;
	if: [ :n | n class == PPXmlText and: [ n data lines includes: ''        Type: INTERNAL'' ]] fillColor: Color green;
	if: [ :n | n class == PPXmlText and: [ n data lines includes: ''        Type: INPUT'' ]] fillColor: Color yellow;
	if: [ :n | n class == PPXmlText and: [ n data lines includes: ''        Type: INNER'' ]] fillColor: Color orange.
b nodes: allChildren.
b layout radial.
b edges 
	moveBehind;
	connectFrom: #parent.
b '