accessing-xsd
subgroupXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types">

  <element name="ID" type="string"/>

  <element name="Name" substitutionGroup="tns:ID" type="string"/>

  <element name="IDBlock" type="string" block="substitution"/>

  <element name="TestSubstitutionGroup">
    <complexType>
      <sequence>
        <element ref="tns:ID"/>
      </sequence>
    </complexType>
  </element>

</schema>'