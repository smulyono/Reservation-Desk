<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_Server_Type_to_Free</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Free</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Server Type to Free</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_server_type_to_RESERVED</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Reserved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change server type to RESERVED</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change Server Status to Free</fullName>
        <actions>
            <name>Change_Server_Type_to_Free</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Server__c.Reserved__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Server Status to Reserved</fullName>
        <actions>
            <name>Change_server_type_to_RESERVED</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Server__c.Reserved__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
