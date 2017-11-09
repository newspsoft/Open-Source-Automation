CALL osae_sp_object_type_add ('WEATHER PLUGIN','Weather Plugin','','PLUGIN',1,0,0,1,'The Weather plugin.
This Plugin retrieves weather forecast and conditions from
the NOAA website based on your zip code.');
CALL osae_sp_object_type_state_add('WEATHER PLUGIN','ON','Running','The Weather plugin is Running.');
CALL osae_sp_object_type_state_add('WEATHER PLUGIN','OFF','Stopped','The Weather plugin is Stopped.');
CALL osae_sp_object_type_event_add('WEATHER PLUGIN','ON','Started','The Weather plugin Started.');
CALL osae_sp_object_type_event_add('WEATHER PLUGIN','OFF','Stopped','The Weather plugin Stopped.');
CALL osae_sp_object_type_method_add('WEATHER PLUGIN','ON','Start','','','','','Start the Weather plugin.');
CALL osae_sp_object_type_method_add('WEATHER PLUGIN','OFF','Stop','','','','','Stop the Weather plugin.');
CALL osae_sp_object_type_method_add('WEATHER PLUGIN','UPDATE','Update','','','','','Update Weather plugin information');
CALL osae_sp_object_type_property_add('WEATHER PLUGIN','Feed URL','String','','',0,1,'Enter the Feed URL required to retrieve the NOAA weather information.');
CALL osae_sp_object_type_property_add('WEATHER PLUGIN','Zipcode','String','','',0,1,'Enter the Zip Code for the location to retrieve the Weather information.');
CALL osae_sp_object_type_property_add('WEATHER PLUGIN','Update Interval','String','','30',0,1,'Number of minutes for the Weather plugin to Refresh
the weather conditions and forecast information retrieved.');
CALL osae_sp_object_type_property_add('WEATHER PLUGIN','System Plugin','Boolean','','TRUE',0,0,'Is the Weather Plugin is a system plugin.');

CALL osae_sp_object_type_add ('WEATHER','Weather Data','SYSTEM','THING',0,1,0,1,'Weather object.
This object will contain all the weather information
retrieved from one of the weather plugins.');
CALL osae_sp_object_type_state_add('WEATHER','ON','Current','The current Weather data is Up-To-Date.');
CALL osae_sp_object_type_state_add('WEATHER','OFF','Obsolete','The current Weather data is Obsolete.');
CALL osae_sp_object_type_event_add('WEATHER','ON','Updated','The Weather plugin Updated.');
CALL osae_sp_object_type_event_add('WEATHER','OFF','Hung','The Weather state changes to Hung.');
CALL osae_sp_object_type_event_add('WEATHER','DAY','Day','The Weather status of Day occured.');
CALL osae_sp_object_type_event_add('WEATHER','NIGHT','Night','The Weather status of Night occured.');
CALL osae_sp_object_type_event_add('WEATHER','DAWN','Dawn','The Weather status of Dawn occured.');
CALL osae_sp_object_type_event_add('WEATHER','DUSK','Dusk','The Weather status of Dusk occured.');
CALL osae_sp_object_type_method_add('WEATHER','ON','Updated','','','','','Force the plugin to update.');
CALL osae_sp_object_type_method_add('WEATHER','OFF','Hung','','','','','Set the Weather state to Obsolete.');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Low','Integer','','0',0,0,'Low-Temp for Night 1.');
CALL osae_sp_object_type_property_add('WEATHER','Night2 Low','Integer','','0',0,0,'Low-Temp for Night 2.');
CALL osae_sp_object_type_property_add('WEATHER','Night3 Low','Integer','','0',0,0,'Low-Temp for Night 3.');
CALL osae_sp_object_type_property_add('WEATHER','Night4 Low','Integer','','0',0,0,'Low-Temp for Night 4.');
CALL osae_sp_object_type_property_add('WEATHER','Day1 High','Integer','','0',0,0,'High-Temp for Day 1.');
CALL osae_sp_object_type_property_add('WEATHER','Day2 High','Integer','','0',0,0,'High-Temp for Day 2.');
CALL osae_sp_object_type_property_add('WEATHER','Day3 High','Integer','','0',0,0,'High-Temp for Day 3.');
CALL osae_sp_object_type_property_add('WEATHER','Day4 High','Integer','','0',0,0,'High-Temp for Day 4.');
CALL osae_sp_object_type_property_add('WEATHER','Day1 Precip','Integer','','0',0,0,'Percipitation % for Day 1.');
CALL osae_sp_object_type_property_add('WEATHER','Day2 Precip','Integer','','0',0,0,'Percipitation % for Day 2.');
CALL osae_sp_object_type_property_add('WEATHER','Day3 Precip','Integer','','0',0,0,' Percipitation % for Day 3.');
CALL osae_sp_object_type_property_add('WEATHER','Day4 Precip','Integer','','0',0,0,'Percipitation % for Day 4.');
CALL osae_sp_object_type_property_add('WEATHER','Conditions','String','','',0,0,'Current Conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Wind Speed','Float','','',0,0,'Current Wind Speed.');
CALL osae_sp_object_type_property_add('WEATHER','Wind Directions','String','','',0,0,'Current Wind Direction.');
CALL osae_sp_object_type_property_add('WEATHER','Humidity','Integer','','0',0,0,'Current Humidity.');
CALL osae_sp_object_type_property_add('WEATHER','Pressure','Float','','',0,0,'Current Pressure.');
CALL osae_sp_object_type_property_add('WEATHER','Dewpoint','Float','','',0,0,'Current Dewpoint.');
CALL osae_sp_object_type_property_add('WEATHER','Image','String','','',0,0,'Image for the current conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Visibility','Float','','',0,0,'Current Visability.');
CALL osae_sp_object_type_property_add('WEATHER','Windchill','Integer','','0',0,0,'Current Wind Chill.');
CALL osae_sp_object_type_property_add('WEATHER','Temp','Float','','',0,0,'Current Tempature.');
CALL osae_sp_object_type_property_add('WEATHER','Last Updated','DateTime','','',0,0,'Date and Time of the last Update.');
CALL osae_sp_object_type_property_add('WEATHER','Day5 High','Integer','','0',0,0,'High-Temp for Day 5.');
CALL osae_sp_object_type_property_add('WEATHER','Day6 High','Integer','','0',0,0,'High-Temp for Day 6.');
CALL osae_sp_object_type_property_add('WEATHER','Night5 Low','Integer','','0',0,0,'Low-Temp for Night 5.');
CALL osae_sp_object_type_property_add('WEATHER','Night6 Low','Integer','','0',0,0,'Low-Temp for Night 6.');
CALL osae_sp_object_type_property_add('WEATHER','Day7 High','Integer','','0',0,0,'High-Temp for Day 7.');
CALL osae_sp_object_type_property_add('WEATHER','Day5 Precip','Integer','','0',0,0,'Percipitation % for Day 5.');
CALL osae_sp_object_type_property_add('WEATHER','Day6 Precip','Integer','','0',0,0,'Percipitation % for Day 6.');
CALL osae_sp_object_type_property_add('WEATHER','Day7 Precip','Integer','','0',0,0,'Percipitation % for Day 7.');
CALL osae_sp_object_type_property_add('WEATHER','Night7 Low','Integer','','0',0,0,'Low-Temp for Night 7.');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Precip','Integer','','0',0,0,'Percipitation % for Night 1.');
CALL osae_sp_object_type_property_add('WEATHER','Night2 Precip','Integer','','0',0,0,'Percipitation % for Night 2.');
CALL osae_sp_object_type_property_add('WEATHER','Night3 Precip','Integer','','0',0,0,'Percipitation % for Night 3.');
CALL osae_sp_object_type_property_add('WEATHER','Night4 Precip','Integer','','0',0,0,'Percipitation % for Night 4.');
CALL osae_sp_object_type_property_add('WEATHER','Night5 Precip','Integer','','0',0,0,'Percipitation % for Night 5.');
CALL osae_sp_object_type_property_add('WEATHER','Night6 Precip','Integer','','0',0,0,'Percipitation % for Night 6.');
CALL osae_sp_object_type_property_add('WEATHER','Night7 Precip','Integer','','0',0,0,'Percipitation % for Night 7.');
CALL osae_sp_object_type_property_add('WEATHER','Tonight Precip','Integer','','0',0,0,'Percipitation % for Tonight.');
CALL osae_sp_object_type_property_add('WEATHER','Today Precip','Integer','','0',0,0,'Percipitation % for Today.');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Forecast','String','','',0,0,'Forecast for Night 1.');
CALL osae_sp_object_type_property_add('WEATHER','Night2 Forecast','String','','',0,0,'Forecast for Night 2.');
CALL osae_sp_object_type_property_add('WEATHER','Night3 Forecast','String','','',0,0,'Forecast for Night 3.');
CALL osae_sp_object_type_property_add('WEATHER','Night4 Forecast','String','','',0,0,'Forecast for Night 4.');
CALL osae_sp_object_type_property_add('WEATHER','Night5 Forecast','String','','',0,0,'Forecast for Night 5.');
CALL osae_sp_object_type_property_add('WEATHER','Night6 Forecast','String','','',0,0,'Forecast for Night 6.');
CALL osae_sp_object_type_property_add('WEATHER','Night7 Forecast','String','','',0,0,'Forecast for Night 7.');
CALL osae_sp_object_type_property_add('WEATHER','Tonight Forecast','String','','',0,0,'Forecast for Tonight.');
CALL osae_sp_object_type_property_add('WEATHER','Today Forecast','String','','',0,0,'Forecast for Today.');
CALL osae_sp_object_type_property_add('WEATHER','Day1 Forecast','String','','',0,0,'Forecast for Day 1.');
CALL osae_sp_object_type_property_add('WEATHER','Day2 Forecast','String','','',0,0,'Forecast for Day 2.');
CALL osae_sp_object_type_property_add('WEATHER','Day3 Forecast','String','','',0,0,'Forecast for Day 3.');
CALL osae_sp_object_type_property_add('WEATHER','Day4 Forecast','String','','',0,0,'Forecast for Day 4.');
CALL osae_sp_object_type_property_add('WEATHER','Day5 Forecast','String','','',0,0,'Forecast for Day 5.');
CALL osae_sp_object_type_property_add('WEATHER','Day6 Forecast','String','','',0,0,'Forecast for Day 6.');
CALL osae_sp_object_type_property_add('WEATHER','Day7 Forecast','String','','',0,0,'Forecast for Day 7.');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Image','String','','',0,0,'Image for the Night 1 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night2 Image','String','','',0,0,'Image for the Night 2 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night3 Image','String','','',0,0,'Image for the Night 3 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night4 Image','String','','',0,0,'Image for the Night 4 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night5 Image','String','','',0,0,'Image for the Night 5 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night6 Image','String','','',0,0,'Image for the Night 6 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night7 Image','String','','',0,0,'Image for the Night 7 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Tonight Image','String','','',0,0,'Image for Tonight\'s conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Today Image','String','','',0,0,'Image for Today\'s conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day1 Image','String','','',0,0,'Image for the Day 1 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day2 Image','String','','',0,0,'Image for the Day 2 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day3 Image','String','','',0,0,'Image for the Day 3 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day4 Image','String','','',0,0,'Image for the Day 4 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day5 Image','String','','',0,0,'Image for the Day 5 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day6 Image','String','','',0,0,'Image for the Day 6 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Day7 Image','String','','',0,0,'Image for the Day 7 conditions.');
CALL osae_sp_object_type_property_add('WEATHER','Night1 Summary','String','','',0,0,'Summary for Night 1.');
CALL osae_sp_object_type_property_add('WEATHER','Night2 Summary','String','','',0,0,'Summary for Night 2.');
CALL osae_sp_object_type_property_add('WEATHER','Night3 Summary','String','','',0,0,'Summary for Night 3.');
CALL osae_sp_object_type_property_add('WEATHER','Night4 Summary','String','','',0,0,'Summary for Night 4.');
CALL osae_sp_object_type_property_add('WEATHER','Night5 Summary','String','','',0,0,'Summary for Night 5.');
CALL osae_sp_object_type_property_add('WEATHER','Night6 Summary','String','','',0,0,'Summary for Night 6.');
CALL osae_sp_object_type_property_add('WEATHER','Night7 Summary','String','','',0,0,'Summary for Night 7.');
CALL osae_sp_object_type_property_add('WEATHER','Tonight Summary','String','','',0,0,'Summary for Tonight.');
CALL osae_sp_object_type_property_add('WEATHER','Today Summary','String','','',0,0,'Summary for Today.');
CALL osae_sp_object_type_property_add('WEATHER','Day1 Summary','String','','',0,0,'Summary for Day 1.');
CALL osae_sp_object_type_property_add('WEATHER','Day2 Summary','String','','',0,0,'Summary for Day 2.');
CALL osae_sp_object_type_property_add('WEATHER','Day3 Summary','String','','',0,0,'Summary for Day 3.');
CALL osae_sp_object_type_property_add('WEATHER','Day4 Summary','String','','',0,0,'Summary for Day 4.');
CALL osae_sp_object_type_property_add('WEATHER','Day5 Summary','String','','',0,0,'Summary for Day 5.');
CALL osae_sp_object_type_property_add('WEATHER','Day6 Summary','String','','',0,0,'Summary for Day 6.');
CALL osae_sp_object_type_property_add('WEATHER','Day7 Summary','String','','',0,0,'Summary for Day 7.');
CALL osae_sp_object_type_property_add('WEATHER','Sunrise','DateTime','','',0,0,'Time of today\'s Sunrise.');
CALL osae_sp_object_type_property_add('WEATHER','Sunset','DateTime','','',0,0,'Time of today\'s Sunset.');
CALL osae_sp_object_type_property_add('WEATHER','Tonight Low','Integer','','0',0,0,'Low Tempature of Tonight..');
CALL osae_sp_object_type_property_add('WEATHER','Today High','Integer','','0',0,0,'High Tempature of Today..');
CALL osae_sp_object_type_property_add('WEATHER','Latitude','Float','','',0,0,'Latitude of this system.');
CALL osae_sp_object_type_property_add('WEATHER','Longitude','Float','','',0,0,'Longitude of this system.');
CALL osae_sp_object_type_property_add('WEATHER','DayNight','String','','',0,0,'Current status of Day/Night.');