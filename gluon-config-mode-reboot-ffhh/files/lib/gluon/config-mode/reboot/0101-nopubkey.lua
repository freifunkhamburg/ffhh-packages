local msg = [[<p>
               <%= luci.template.render_string(site.config_mode.msg_nopubkey) %>
             </p>]]

local uci = luci.model.uci.cursor()
local meshvpn_enabled = uci:get("fastd", "mesh_vpn", "enabled", "0")

if meshvpn_enabled == "1" then
  return nil
else
  local site = require 'gluon.site_config'
  local sysconfig = require 'gluon.sysconfig'

  local hostname = uci:get_first("system", "system", "hostname")

  return function ()
           luci.template.render_string(msg, { hostname=hostname
                                            , site=site
                                            , sysconfig=sysconfig
                                            })
         end
end
