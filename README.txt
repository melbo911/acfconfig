

ACF config by livery

You're looking for a method to configure your aircraft livery-specific and your add-on does 
not support it yet ?

This LUA plugin might make you stop searching any further.

The script is looking for a config file ( acfconfig.ini) inside the selected livery folder 
and will set the DataRefs defined inside.

 

Check out these little videos:

 
	https://youtu.be/e0llP-wvPf0


	https://youtu.be/sleAZRyyeT8

 

Here an example "acfconfig.ini" file used for the Cowansim H125/AS350:

# floor 0=rubber
AS350/floorswap,0

# back 1=clear
AS350/removeallback,0

# ceneflex 0=show
AS350/ceneflex/kill,1

# floats 0=show
AS350/acc/floats,0

# skid steps 1=short
AS350/acc/steps=1

# side basket 0=show
AS350/basket,1

# dual controls 0=show
AS350/acc/uno_ctrls,1

# cutters 1=show
AS350/acc/cutters,0

# searchlight 0=show
AS350/spot/lt,1

# people
AS350/pilot/kill,0
AS350/copilot/kill,0
AS350/pass_1/kill,0

 

The syntax of the ini-file is pretty simple:

   Lines starting with a "#"  are ignored and can be used for comments

   Lines containing a "," are interpreted as   "Dataref","Value"


Requirements:

    FlyWithLua and an aircraft which can be configured by DataRefs

 

Installation:

    Put the acfconfig.lua script into the Scripts folder and restart FlyWithLua

    Put a "acfconfig.ini" into the livery folder and use it to set the desired datarefs 
    for your aircraft

    In the ZIP file you also can find 2 example config files

    Works with XP11 and XP12

 

De-Installation:

    Delete the acfconfig.lua script from your FlyWithLua/Scripts folder and restart FlyWIthLua

 

Notes:

    The current "Windows" version of FlyWithLua has some problems dealing with DataRefs of 
    type "Data". So the above script might not work properly for you.

    Under the Download button you will also find a fixed FWL plugin. I have been working 
    with @sparker on that and future versions of FlyWithLua might also contain that fix.

 



