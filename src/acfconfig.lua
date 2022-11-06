
function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

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
      local cmd = {}
      print("%%% loading livery config")
      for line in infile:lines() do
        if ( not line:match('^#') and line:match(',') ) then   -- skip comment lines
          cmd = split(line,",")	  
          if ( XPLMFindDataRef(cmd[1]) ~= nil )then    	     -- dataref does not exist
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

do_often("loadAcfConfig()")

create_command("FlyWithLua/loadAcfConfig", "load acf config", "acfconfig_livery=''", "", "")

