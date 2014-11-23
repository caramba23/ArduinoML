<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b9835a4f-f0ab-47ec-8d37-27482066d1db(Scenario1)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" />
  <language namespace="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" />
  <language namespace="4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="3755390211025110728" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="scenario 1" />
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211026609418" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211026609420" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="buzzer" />
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="3755390211026609413" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="3755390211025110729" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026621419" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="alarm" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026621432" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026621419" resolveInfo="alarm" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026621348" resolveInfo="buttonRelease" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211025110730" resolveInfo="init" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026621423" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026621359" resolveInfo="led_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026621428" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026621364" resolveInfo="buzzer_ON" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026621359" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026609418" resolveInfo="led" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026621361" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026609418" resolveInfo="led" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026621364" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026609420" resolveInfo="buzzer" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026621368" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026609420" resolveInfo="buzzer" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026621346" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonPush" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026609413" resolveInfo="button" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026621348" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonRelease" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026609413" resolveInfo="button" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211025110730" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026621415" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211025110730" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026621346" resolveInfo="buttonPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026621419" resolveInfo="alarm" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026621403" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026621361" resolveInfo="led_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026621409" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026621368" resolveInfo="buzzer_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

