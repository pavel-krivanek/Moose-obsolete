accessing-xsd
listXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types">

  <element name="workDays">
    <simpleType>
      <restriction base="tns:daysInWeek">
        <length value="5"/>
      </restriction>
    </simpleType>
  </element>

  <simpleType name="daysInWeek">
    <list itemType="xsd:integer"/>
  </simpleType>

</schema>'