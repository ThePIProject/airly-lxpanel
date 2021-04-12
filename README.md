# airly-lxpanel
An attempt of writing a widget/plugin for LXpanel in linux to show air quality

# Usage

0. You can install vs code and use tasks
1. Install dependency
`sudo apt install lxpanel-dev`
2. Run Task to build tru makefile
3. Copy the plugin into the plugins folder
`sudo cp airly_pannel.so /usr/lib/arm-linux-gnueabihf/lxpanel/plugins/airly_pannel.so`
4. Restart LXPanel
`lxpanelctl restart`