<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:2a7f2ecf-eeb4-46a7-a447-edd835fbf200(ArduinoML.Scenario2)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" />
  <language namespace="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" />
  <language namespace="4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="3755390211026663618" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="scenario 2" />
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211026663680" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="buzzer" />
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="3755390211026663675" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button1" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="3755390211026663677" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button2" />
      <property name="pin" nameId="njwj.6603453658766474934" value="11" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="3755390211026663619" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026663721" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="wait_button_2" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663733" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663721" resolveInfo="wait_button_2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663693" resolveInfo="button2Push" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663726" resolveInfo="alarm" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663735" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663721" resolveInfo="wait_button_2" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663684" resolveInfo="button1Release" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663620" resolveInfo="init" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026663747" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026663714" resolveInfo="buzzer_OFF" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026663723" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="wait_button_1" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663738" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663723" resolveInfo="wait_button_1" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663682" resolveInfo="button1Push" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663726" resolveInfo="alarm" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663740" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663723" resolveInfo="wait_button_1" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663620" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663697" resolveInfo="button2Release" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026663749" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026663714" resolveInfo="buzzer_OFF" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026663726" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="alarm" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663751" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663726" resolveInfo="alarm" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663684" resolveInfo="button1Release" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663723" resolveInfo="wait_button_1" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663753" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663726" resolveInfo="alarm" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663697" resolveInfo="button2Release" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663721" resolveInfo="wait_button_2" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026663745" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026663712" resolveInfo="buzzer_ON" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026663712" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026663680" resolveInfo="buzzer" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026663714" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026663680" resolveInfo="buzzer" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026663682" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button1Push" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026663675" resolveInfo="button1" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026663684" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button1Release" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026663675" resolveInfo="button1" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026663693" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2Push" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026663677" resolveInfo="button2" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026663697" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="button2Release" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026663677" resolveInfo="button2" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026663620" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663719" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663620" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663682" resolveInfo="button1Push" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663721" resolveInfo="wait_button_2" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026663730" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026663620" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026663693" resolveInfo="button2Push" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026663723" resolveInfo="wait_button_1" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026663717" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026663714" resolveInfo="buzzer_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

