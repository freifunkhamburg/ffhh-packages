local uci = luci.model.uci.cursor()
local meshvpn_enabled = uci:get("fastd", "mesh_vpn", "enabled", "0")

if meshvpn_enabled == "1" then
  return nil
else
  local i18n = require "luci.i18n"
  local site = require 'gluon.site_config'
  local sysconfig = require 'gluon.sysconfig'

  local hostname = uci:get_first("system", "system", "hostname")

  local msg = [[<p>]] .. i18n.translate('gluon-config-mode:nopubkey') .. [[</p>]]

  return function ()
           luci.template.render_string(msg, { hostname=hostname
                                            , site=site
                                            , sysconfig=sysconfig
                                            })
         end
end
