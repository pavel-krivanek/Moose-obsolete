accessing-xsd
notationXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types">

  <notation name="teamLogo"
            system="com/team/graphics/teamLogo"
            public="http://www.team.com/graphics/teamLogo"
            id="notation.teamLogo">
    <annotation>
      <documentation xml:lang="en">Location of the corporate logo.</documentation>
    </annotation>
  </notation>

  <notation name="teamMascot"
            system="com/team/graphics/teamMascot"
            public="http://www.team.com/graphics/teamMascot"
            id="notation.teamMascot">
    <annotation>
      <documentation xml:lang="en">Location of the corporate mascot.</documentation>
    </annotation>
  </notation>

  <element name="demoNotation">
    <simpleType>
      <restriction base="NOTATION">
        <enumeration value="tns:teamLogo"/>
        <enumeration value="tns:teamMascot"/>
      </restriction>
    </simpleType>
  </element>

</schema>'