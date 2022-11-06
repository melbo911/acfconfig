

## ACF config by livery - for X-Plane

You're looking for a method to configure your aircraft livery-specific and your add-on does 
not support it yet ?

This LUA plugin might make you stop searching any further.

The script is looking for a config file ( acfconfig.ini) inside the selected livery folder 
and will set the DataRefs defined inside.

 

### Check out these little videos:

 
https://youtu.be/e0llP-wvPf0


https://youtu.be/sleAZRyyeT8

 

### The syntax of the ini-file is pretty simple:

Lines starting with a "#"  are ignored and can be used for comments

Lines containing a "," are interpreted as   "Dataref","Value"


### Requirements:

FlyWithLua and an aircraft which can be configured by DataRefs

 

### Installation:

Put the acfconfig.lua script into the Scripts folder and restart FlyWithLua

Put a "acfconfig.ini" into the livery folder and use it to set the desired datarefs 
for your aircraft

In the ZIP file you will also find example config files

acfconfig works with XP11 and XP12

 

### De-Installation:

Delete the acfconfig.lua script from your FlyWithLua/Scripts folder and restart FlyWIthLua

 

### Notes:

The current "Windows" version of FlyWithLua has some problems dealing with DataRefs of 
type "Data". So the above script might not work properly for you.

Under the "fwl" folder you will also find fixed FWL plugins ( win and mac ). I have been working 
with @sparker on that and future versions of FlyWithLua might also contain that fix.

 



