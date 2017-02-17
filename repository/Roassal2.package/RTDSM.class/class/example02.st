examples
example02
	<script: 'self example02 inspect'>
	| dsm |
	dsm := RTDSM new.
	dsm objects: (1 to: 10).
	dsm dependency: [ :aValue | aValue // 2 ].
	^ dsm