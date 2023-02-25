# i3-configs

My current i3-configs. This setup is very personalized to my setup but most parts should be able to transfer into other i3 setups without issue. 

---

![The desktop example](https://i.imgur.com/0eh6tKF.jpg "desktop example")

---

The icons in the bottom bar can be clicked with the following options:


**Terminal, File Browser**  
- Left Click: Goes to linked workspace for that app  
- Right Click: Opens new instance of the app


**Firefox**
- **Left Click**: Jumps to workspace 1 which is the primary firefox workspace  
- **Middle Click**: Open new firefox window in current workspace  
- Right Click: Jumps to workspace 4 which is the secondary firefox workspace in monitor two


**Spotify**  
- **Left Click**: Previous song / Restart Current Song   
- **Middle Click**: Pause  
- **Right Click**: Next Song


**Discord**  
- **Left Click**: Jumps to workspace 7 which is the primary discord workspace (monitor 3)
- **Right Click**: Opens new Discord instance


add, remove or edit from: [workspaceSwitcher.sh](workspaceSwitcher.sh)


**Config Monitors** - [configmonitors.sh](configmonitors.sh)    
This script set the monitors to output in the order that you want. You will need to make sure to update the output display names in both the monitor config and for any settings in the i3 config that set an application to use a certain monitor. 