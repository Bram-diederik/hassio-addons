# Home Assistant Community Add-on: Assistant Relay
![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]
![Project Maintenance][maintenance-shield]

Assistant Relay for Homeassistant OS

## About

Assistant Relay is no longer maintained by Apipa169, therefore this fork exists. I will NOT FIX ANY BUGS! This fork is just to keep the base images up to date to reduce security issues.<br />
<br />
This add-on brings Assistant Relay (by greghesp) to Hass.io. The original Hassio Addon was by Apipa169, but he stopped maintaining it.<br />
Assistant Relay is a Node.js server that exposes the Google Assistant as a REST API.<br />
Send Assistant Relay any query you would send the Google Assistant SDK, and get a response back.<br />
It also supports the Google Home Broadcast command so you can send audio notifications to your Google Home devices, without interrupting music.

## Installation

[![FaserF Homeassistant Addons](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FFaserF%2Fhassio-addons)
<br />
The installation of this add-on is pretty straightforward and not different in comparison to installing any other custom Home Assistant add-on.<br />
Just click the link above or add my repo to the hassio addons repositorys: <https://github.com/FaserF/hassio-addons>

## Configuration

1. You do not need to configure anything at the add-on page. Click "Start" to run the add-on
2. Check the log below to see if it's running.
3. Click on "Open web UI" or go to <http://[IP>]:[PORT] in your browser.
4. Follow the instructions in the browser.
5. You can now use Assistant Relay.

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
port: 3000
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `port`

This option is needed. If you want to change the port of Assistant Relay, please do this in the add-on settings and leave the Assistant Relay setting on port 3000.

## Ingress

This addon supports Homeassistant Ingress, but isnt fully tested.

## Support

As the official dev has stopped maintaining it I WILL NOT give any support! This is just a fork to keep security patches up to date!

## Authors & contributors

- This add-on is using (the awesome) [Assistant Relay](https://github.com/greghesp/assistant-relay) made by Greghesp.<br />
- The original HA Addon was made by [Apipa169](https://github.com/Apipa169/Assistant-Relay-for-Hassio)<br />

The updated hassio addon is brought to you by [FaserF].

[maintenance-shield]: https://img.shields.io/maintenance/yes/2022.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-no-red.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-no-red.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-no-red.svg
[FaserF]: https://github.com/FaserF/