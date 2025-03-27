# ideviceconfig

**ideviceconfig** is a simple tool that gathers shortcut commands from [libimobiledevice](https://github.com/libimobiledevice) to help manage iOS devices easily.

## Features
- Check app versions on iOS Real Devices (single or multiple apps)
- Restart devices (single or mass restart)
- Install apps (single or mass install)
- Uninstall apps (single or mass uninstall)
- Check connected devices and their details

## Installation
To install `ideviceconfig`, just run:
```sh
brew tap fatahillahardhi/ideviceconfig
brew install ideviceconfig
```

## How to Update
If you need to update it, follow these steps:
```sh
brew update
brew upgrade ideviceconfig
```

## Requirements
Before using `ideviceconfig`, make sure you have these installed:

### macOS
```sh
brew install ruby libimobiledevice libplist openssl
```

### Linux (Ubuntu/Debian)
```sh
sudo apt update && sudo apt install -y ruby libimobiledevice-utils libplist-utils openssl
```

## How to Use
```sh
--udid=UDID                  Pick the target device by UDID
--apps=APP_NAMES             List the apps to check (comma-separated)
--install=APP_PATH           Choose the app file to install
--mass-install=APP_PATH      Install an app on all connected devices
--uninstall=BUNDLE_ID        Uninstall an app by its Bundle ID
--mass-uninstall=BUNDLE_ID   Uninstall an app from all connected devices
-a, --appver                 Check installed app versions
-d, --device_list            Show a list of connected iOS devices
-r, --restart                Restart a device
-m, --mass-restart           Restart all connected devices
-h, --help                   Show this help message
```

## Examples
### Restart Device
- Restart a single device:
  ```sh
  ideviceconfig --udid="<udid>" --restart
  ```
- Restart all connected devices:
  ```sh
  ideviceconfig -m
  or
  ideviceconfig --mass-restart
  ```

### Check Connected Devices
```sh
ideviceconfig -d
ideviceconfig --device_list
```

### Install Apps
- Install an app on a single device:
  ```sh
  ideviceconfig --udid="<udid>" --install="<APP_PATH>"
  ```
- Install an app on all connected devices:
  ```sh
  ideviceconfig --mass-install="<APP_PATH>"
  ```

### Uninstall Apps
- Uninstall an app from a single device:
  ```sh
  ideviceconfig --udid="<udid>" --uninstall="<bundleId>"
  ```
- Uninstall an app from all connected devices:
  ```sh
  ideviceconfig --mass-uninstall="<bundleId>"
  ```

### Check App Version
- Check the version of a single app:
  ```sh
  ideviceconfig --udid="<udid>" --apps="<APP_NAMES>" --appver
  ```
- Check the version of multiple apps:
  ```sh
  ideviceconfig --udid="<udid>" --apps="<APP_NAMES_1>,<APP_NAMES_2>" --appver
  ```

## Author
Created by [Fatahillah Ardhi](https://www.linkedin.com/in/fatahillah-ardhi/).

## Sponsor
If you find `ideviceconfig` useful and want to support its development, you can sponsor me at [GitHub Sponsors](https://github.com/sponsors/fatahillahardhi). Your donations help me add new features, fix issues faster, and improve the project overall. Thank you for your support! 🙌 ❤️

## License
This project is open-source and distributed under the MIT License.

