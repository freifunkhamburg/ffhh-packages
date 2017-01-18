gluon-config-mode-reboot-ffhh
=============================

Show text on reboot page if mesh vpn is disabled. This text has to be added in the site repository in the internationalisation files.

###Example

in `i18n/de.po`:

```
msgid "gluon-config-mode:nopubkey"
msgstr ""
"<p><div class=\"the-key\">Du hast ausgewählt die Internetverbindung (Mesh-VPN) nicht zu nutzen. "
"Dein Knoten kann also nur eine Internetverbindung aufbauen, wenn andere Freifunk-"
"Knoten in Reichweite schon eine Internetverbindung haben.</div></p>"
"<p>Bitte trage nun den Namen deines Knotens "
"(<em><%=escape(hostname)%></em>) und ein paar andere Informationen unter "
"<a href=\"https://formular.hamburg.freifunk.net/#/new?hostname=<%=escape(hostname)%>&mac=<%= sysconfig.primary_mac %>\" target=\"_blank\">https://formular.hamburg.freifunk.net/</a> "
"ein.</p>"
```
