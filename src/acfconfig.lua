--
-- aircraft config by livery
--
-- melbo @x-plane.org - 221107
--

acfconfig_livery = ""

function loadAcfConfig()
  local livery = get("sim/aircraft/view/acf_livery_path")
  if ( livery ~= acfconfig_livery ) then
    acfconfig_livery = livery 
    local c = "acfconfig.ini"
    local f = livery..c
    print("%%% trying to open "..f)
    local infile = io.open(f,"r")
    if ( infile ~= nil ) then     
      print("%%% loading livery config")
      for line in infile:lines() do
        local cmd = {}
        if ( not line:match('^#') and line:match(',') ) then   -- skip comment lines
          for match in (line..','):gmatch("(.-)"..',') do
            table.insert(cmd, match);
          end
          if ( XPLMFindDataRef(cmd[1]) ~= nil )then    	     -- dataref does not exist
            --print("%%% set ["..cmd[1].."] = ["..cmd[2].."]")
            set(cmd[1],cmd[2])
          else
            print("%%% invalid dataref in livery config")
          end
        end
      end
      io.close(infile)
    else
      print("%%% no livery config")
    end
  end
end

do_often("loadAcfConfig()")   -- do every second

create_command("FlyWithLua/loadAcfConfig", "load acfconfig", "acfconfig_livery=''", "", "")

