sources
exampleTwoColumnsAsFlow

| firstColumn secondColumn associations v eb firstElements secondElements |
firstColumn := #( 'WP A.1' 'WP A.2' 'WP A.3' ).
secondColumn := #( 'WP B.1' 'WP B.2' 'WP B.3' ).
associations := OrderedCollection new
	add: 'WP A.1' -> 'WP A.2';
	add: 'WP A.2' -> 'WP A.3';

	add: 'WP B.1' -> 'WP B.2';
	add: 'WP B.2' -> 'WP B.3';
	
	add: 'WP A.3' -> 'WP B.1';
	add: 'WP B.1' -> 'WP A.1';
	add: 'WP B.2' -> 'WP A.2';
	add: 'WP B.3' -> 'WP A.2';
	yourself.

v := RTView new.
firstElements := ((RTEllipse new extent: 70 @ 30; color: Color lightBlue) + RTLabel) elementsOn: firstColumn.
secondElements := ((RTEllipse new extent: 70 @ 30; color: Color yellow) + RTLabel) elementsOn: secondColumn.
v addAll: firstElements.
v addAll: secondElements.

v elements @ RTDraggable.

RTVerticalLineLayout new gapSize: 15; on: firstElements.
RTVerticalLineLayout new gapSize: 15; on: secondElements.

secondElements translateBy: 100 @ 0.

eb := RTEdgeBuilder new.
eb view: v.
eb shape arrowedLine
	withBorderAttachPoint.
eb useAssociations: associations.

^ v