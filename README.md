# Dot Files and Terminal-bash-Scripts 📝
```bash
#!/bin/bash 😀
```

### Welcome to my cumulative bash script and Terminal Command repository 👋


## Useful Terminal Commands💡

### 🍎 OS X

- Enable TRIM Support to 3rd Party SSDs.
  ```bash
  sudo trimforce enable
  ```

- Delete All Locale TimeMachine Snapshot files.
  ```bash
  for d in $(tmutil listlocalsnapshotdates | grep "-"); do sudo tmutil deletelocalsnapshots $d; done
  ```
- Removing update Badges
  ```bash
  sudo softwareupdate --ignore "UPDATE_NAME e.g macOS BigSur"
  defaults write com.apple.systempreferences AttentionPrefBundleIDs 0
  killall Dock
  ```
  for Recover
  ```bash
  sudo softwareupdate --reset-ignored
  ```
- OS X Mojave Auto Dark Theme
  ```bash
  ./darkmode.sh 0600 1830
  ```
  uninstall 
  ```bash
  ./darkmode.sh /u
  ```
- Refresh Launchpad and Dock
  ```bash
  defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
  ```
  
### 🐧 GNU/Linux
  - 🚧 Currently Empty 🚫

### ![image](/res/win_logo_20.png) Windows
  - CMD MD5 Checksum.
    ```bash
    certutil -hashfile file_name MD5
    ```
### 🌎 UNIVERSAL

- How to Exit VIM 😂

  **`Press ESC`**
  ```bash
  :q!
  ```
  **`Enter!`**

## Dynamic Wallpaper

[![image](https://user-images.githubusercontent.com/33639948/89126204-99725a00-d4ec-11ea-9f22-1c5b50f5a530.png)](https://www.dynamicwallpaper.club/wallpaper/7vzrnfre7nq "Click for Download")
> My Custom Dynamic Wallpaper
