CALL osae_sp_object_type_add ('WEB SERVER','OSA Web Server Plugin','','PLUGIN',1,0,0,1);
CALL osae_sp_object_type_state_add('WEB SERVER','ON','Running');
CALL osae_sp_object_type_state_add('WEB SERVER','OFF','Stopped');
CALL osae_sp_object_type_event_add('WEB SERVER','ON','Started');
CALL osae_sp_object_type_event_add('WEB SERVER','OFF','Stopped');
CALL osae_sp_object_type_method_add('WEB SERVER','ON','Start','','','','');
CALL osae_sp_object_type_method_add('WEB SERVER','OFF','Stop','','','','');
CALL osae_sp_object_type_property_add('WEB SERVER','System Plugin','Boolean','','TRUE',0);
CALL osae_sp_object_type_property_add('WEB SERVER','Timeout','Integer','','60',0);