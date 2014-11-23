<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:9056419f-407d-45e1-a431-d47968c34a6f(ArduinoML.ScenarioAdditionnel_LevelCrossing)">
  <persistence version="8" />
  <language namespace="a2972a4d-fe83-4d24-b15a-90c11d704033(ArduinoML)" />
  <language namespace="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" />
  <language namespace="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" />
  <language namespace="4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="njwj" modelUID="r:04a6934a-c553-4c28-b7a0-2f6ceb94de8d(ArduinoML.structure)" version="1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="njwj.Arduino" typeId="njwj.6603453658766418501" id="1599331549631701617" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="level crossing" />
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="1599331549631726376" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="redLight" />
      <property name="pin" nameId="njwj.6603453658766474934" value="10" />
    </node>
    <node role="receptors" roleId="njwj.6437534597636095217" type="njwj.Receptor" typeId="njwj.6603453658766474904" id="1599331549631726378" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="greenLight" />
      <property name="pin" nameId="njwj.6603453658766474934" value="11" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="1599331549631701674" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="barrier" />
      <property name="pin" nameId="njwj.6603453658766474934" value="8" />
    </node>
    <node role="actuators" roleId="njwj.6603453658766474871" type="njwj.Actuator" typeId="njwj.6603453658766474937" id="1599331549631701679" nodeInfo="ng">
      <property name="name" nameId="njwj.6603453658766474932" value="alarmButton" />
      <property name="pin" nameId="njwj.6603453658766474934" value="9" />
    </node>
    <node role="state_machine" roleId="njwj.6603453658766474901" type="njwj.StateMachine" typeId="njwj.6603453658766474873" id="1599331549631701618" nodeInfo="ng">
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1599331549631726415" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="barrier_open" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726456" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726415" resolveInfo="barrier_open" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726383" resolveInfo="barrierDown" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631701619" resolveInfo="barrier_close" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726458" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726415" resolveInfo="barrier_open" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726386" resolveInfo="alarmPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631726423" resolveInfo="alarm_red" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726446" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726397" resolveInfo="redLight_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726452" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726406" resolveInfo="greenLight_ON" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1599331549631726423" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="alarm_red" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726480" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726423" resolveInfo="alarm_red" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726390" resolveInfo="alarmRelease" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631701619" resolveInfo="barrier_close" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726482" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726423" resolveInfo="alarm_red" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631726427" resolveInfo="alarm_green" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726463" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726395" resolveInfo="redLight_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726476" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726410" resolveInfo="greenLight_OFF" />
        </node>
      </node>
      <node role="states" roleId="njwj.6603453658766715417" type="njwj.State" typeId="njwj.6603453658766715235" id="1599331549631726427" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="alarm_green" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726502" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726427" resolveInfo="alarm_green" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726390" resolveInfo="alarmRelease" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631701619" resolveInfo="barrier_close" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726504" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631726427" resolveInfo="alarm_green" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631726423" resolveInfo="alarm_red" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726485" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726397" resolveInfo="redLight_OFF" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726498" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726406" resolveInfo="greenLight_ON" />
        </node>
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="1599331549631726395" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="redLight_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="1599331549631726376" resolveInfo="redLight" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="1599331549631726397" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="redLight_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="1599331549631726376" resolveInfo="redLight" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="1599331549631726406" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="greenLight_ON" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="1599331549631726378" resolveInfo="greenLight" />
      </node>
      <node role="actions" roleId="njwj.5947772584489024364" type="njwj.Action" typeId="njwj.6603453658766715354" id="1599331549631726410" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025391" value="greenLight_OFF" />
        <link role="receptor" roleId="njwj.5947772584489024007" targetNodeId="1599331549631726378" resolveInfo="greenLight" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1599331549631726381" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="barrierUp" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1599331549631701674" resolveInfo="barrier" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1599331549631726383" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="barrierDown" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1599331549631701674" resolveInfo="barrier" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1599331549631726386" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="alarmPush" />
        <property name="logical_state" nameId="njwj.5947772584488705295" value="HIGH" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1599331549631701679" resolveInfo="alarmButton" />
      </node>
      <node role="events" roleId="njwj.5947772584489024000" type="njwj.Event" typeId="njwj.6603453658766715382" id="1599331549631726390" nodeInfo="ng">
        <property name="name" nameId="njwj.5947772584489025394" value="alarmRelease" />
        <link role="actuator" roleId="njwj.5947772584489024013" targetNodeId="1599331549631701679" resolveInfo="alarmButton" />
      </node>
      <node role="state_initial" roleId="njwj.2691553813575841901" type="njwj.State" typeId="njwj.6603453658766715235" id="1599331549631701619" nodeInfo="ng">
        <property name="name" nameId="njwj.3930718389488571851" value="barrier_close" />
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726441" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631701619" resolveInfo="barrier_close" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631726415" resolveInfo="barrier_open" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726381" resolveInfo="barrierUp" />
        </node>
        <node role="transitions" roleId="njwj.1449878858754192409" type="njwj.Transition" typeId="njwj.6603453658766715263" id="1599331549631726443" nodeInfo="ng">
          <link role="source" roleId="njwj.2691553813575403252" targetNodeId="1599331549631701619" resolveInfo="barrier_close" />
          <link role="event" roleId="njwj.5947772584489024677" targetNodeId="1599331549631726386" resolveInfo="alarmPush" />
          <link role="target" roleId="njwj.5947772584489024672" targetNodeId="1599331549631726427" resolveInfo="alarm_green" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726432" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726395" resolveInfo="redLight_ON" />
        </node>
        <node role="action_reference" roleId="njwj.5947772584489025159" type="njwj.ActionReference" typeId="njwj.5947772584489025128" id="1599331549631726437" nodeInfo="ng">
          <link role="action" roleId="njwj.5947772584489025156" targetNodeId="1599331549631726410" resolveInfo="greenLight_OFF" />
        </node>
      </node>
    </node>
  </root>
</model>

