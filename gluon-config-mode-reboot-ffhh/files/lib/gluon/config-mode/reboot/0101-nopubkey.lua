local uci = luci.model.uci.cursor()
local meshvpn_enabled = uci:get("fastd", "mesh_vpn", "enabled", "0")

if meshvpn_enabled == "1" then
  return nil
else
  local gluon_luci = require 'gluon.luci'
  local i18n = require "luci.i18n"
  local site = require 'gluon.site_config'
  local sysconfig = require 'gluon.sysconfig'

  local pretty_hostname = require 'pretty_hostname'

  local hostname = pretty_hostname.get(uci)

  local msg = [[<p>]] .. i18n.translate('gluon-config-mode:nopubkey') .. [[</p>]]

  return function ()
	luci.template.render_string(msg,
		{
			hostname=hostname,
			site=site,
			sysconfig=sysconfig,
			escape = gluon_luci.escape,
			urlescape = gluon_luci.urlescape,
		}
	)
	end
end
