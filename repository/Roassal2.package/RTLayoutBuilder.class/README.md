RTLayoutBuilder is a higher abstract to manage layout. Most builder use it as it significantly shorten the use of layouts.

Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=
v := RTView new.

es := (RTBox new size: 8) elementsOn: (1 to: 100).
v addAll: es.

lb := RTLayoutBuilder new.
lb horizontalFlow.
lb setUpElements: es.

v
-=-=-=-=-=-=-=-=-=-=-=-=

Another example using conditional layout:
-=-=-=-=-=-=-=-=-=-=-=-=
b := RTMondrian new.
b nodes: self.
b edges connectToAll: [ :c | c queryAllOutgoingInvocations atTypeScope ].
b layout 
	forceWithCharge: -300;
	ifElement: #isNotConnected then: RTNullLayout new.
b
-=-=-=-=-=-=-=-=-=-=-=-=