<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:68627cbc-160d-418d-b745-56f0193cea48(ArduinoML.Scenario4)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" />
  <language namespace="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" />
  <language namespace="4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="3755390211026707941" nodeInfo="ng">
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211026708000" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="buzzer" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="3755390211026708002" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="led" />
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="3755390211026707998" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="button" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="3755390211026707942" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026708047" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="buzzer_on_state" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026708071" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026708047" resolveInfo="buzzer_on_state" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026708005" resolveInfo="buttonPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026708049" resolveInfo="led_on_state" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026708069" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026708012" resolveInfo="buzzer_ON" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026708049" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="led_on_state" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026708102" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026708049" resolveInfo="led_on_state" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026708005" resolveInfo="buttonPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026707943" resolveInfo="init" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026708093" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026708007" resolveInfo="led_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026708098" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026708016" resolveInfo="buzzer_OFF" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026708007" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026708002" resolveInfo="led" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026708009" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="led_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026708002" resolveInfo="led" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026708012" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026708000" resolveInfo="buzzer" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="3755390211026708016" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="buzzer_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="3755390211026708000" resolveInfo="buzzer" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="3755390211026708005" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="buttonPush" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="3755390211026707998" resolveInfo="button" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="3755390211026707943" nodeInfo="ng">
        <property name="name" nameId="njwj.3489927026365485414" value="init" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="3755390211026708067" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="3755390211026707943" resolveInfo="init" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="3755390211026708005" resolveInfo="buttonPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="3755390211026708047" resolveInfo="buzzer_on_state" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026708032" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026708009" resolveInfo="led_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="3755390211026708037" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="3755390211026708016" resolveInfo="buzzer_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

