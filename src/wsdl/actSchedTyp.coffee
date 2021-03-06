simpleTypes = module.exports =
  CalendarEventAccessLevel:
    base: 'xsd:string'
    values: ["_private","_public","_showAsBusy"]
  CalendarEventAttendeeAttendance:
    base: 'xsd:string'
    values: ["_optional","_required"]
  CalendarEventFrequency:
    base: 'xsd:string'
    values: ["_none","_day","_week","_month","_year"]
  CalendarEventDow:
    base: 'xsd:string'
    values: ["_sunday","_monday","_tuesday","_wednesday","_thursday","_friday","_saturday"]
  CalendarEventDowim:
    base: 'xsd:string'
    values: ["_first","_second","_third","_fourth","_last"]
  CalendarEventReminderMinutes:
    base: 'xsd:string'
    values: ["_none","_0minutes","_10minutes","_12hours","_15minutes","_1day","_1hour","_1week","_2days","_2hours","_30minutes","_3days","_3hours","_4hours","_5hours","_5minutes","_8hours"]
  CalendarEventReminderType:
    base: 'xsd:string'
    values: ["_none","_eMail","_popupWindow"]
  CalendarEventStatus:
    base: 'xsd:string'
    values: ["_canceled","_completed","_confirmed","_tentative"]
  TaskPriority:
    base: 'xsd:string'
    values: ["_high","_low","_medium"]
  TaskReminderMinutes:
    base: 'xsd:string'
    values: ["_0minutes","_10minutes","_12hours","_15minutes","_1day","_1hour","_1week","_2days","_2hours","_30minutes","_3days","_3hours","_4hours","_5hours","_5minutes","_8hours"]
  TaskReminderType:
    base: 'xsd:string'
    values: ["_eMail","_popupWindow"]
  TaskStatus:
    base: 'xsd:string'
    values: ["_completed","_inProgress","_notStarted"]
  PhoneCallPriority:
    base: 'xsd:string'
    values: ["_high","_low","_medium"]
  PhoneCallReminderMinutes:
    base: 'xsd:string'
    values: ["_0minutes","_10minutes","_12hours","_15minutes","_1day","_1hour","_1week","_2days","_2hours","_30minutes","_3days","_3hours","_4hours","_5hours","_5minutes","_8hours"]
  PhoneCallReminderType:
    base: 'xsd:string'
    values: ["_eMail","_popupWindow"]
  PhoneCallStatus:
    base: 'xsd:string'
    values: ["_completed","_scheduled"]
  ProjectTaskPriority:
    base: 'xsd:string'
    values: ["_high","_low","_medium"]
  ProjectTaskStatus:
    base: 'xsd:string'
    values: ["_completed","_inProgress","_notStarted"]
  ProjectTaskConstraintType:
    base: 'xsd:string'
    values: ["_asSoonAsPossible","_fixedStart"]
  ProjectTaskPredecessorPredecessorType:
    base: 'xsd:string'
    values: ["_finishToStart","_startToStart"]
