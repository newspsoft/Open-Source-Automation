CALL osae_sp_object_type_add ('SCRIPT PROCESSOR','Generic Plugin Class','Script Processor','PLUGIN',1,0,0,1);
CALL osae_sp_object_type_state_add('SCRIPT PROCESSOR','ON','Running');
CALL osae_sp_object_type_state_add('SCRIPT PROCESSOR','OFF','Stopped');
CALL osae_sp_object_type_event_add('SCRIPT PROCESSOR','ON','Started');
CALL osae_sp_object_type_event_add('SCRIPT PROCESSOR','OFF','Stopped');
CALL osae_sp_object_type_method_add('SCRIPT PROCESSOR','ON','Start','','','','');
CALL osae_sp_object_type_method_add('SCRIPT PROCESSOR','OFF','Stop','','','','');
CALL osae_sp_object_type_method_add('SCRIPT PROCESSOR','RUN SCRIPT','Run Script','','','','');
CALL osae_sp_object_type_method_add('SCRIPT PROCESSOR','RUN READERS','Run Readers','','','','');
CALL osae_sp_object_type_property_add('SCRIPT PROCESSOR','System Plugin','Boolean','','TRUE',0);
CALL osae_sp_object_type_property_add('SCRIPT PROCESSOR','Debug','Boolean','','FALSE',0);