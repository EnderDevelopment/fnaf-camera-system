# FNAF Camera System

The FNAF Camera System is a Roblox script that creates a camera system similar to the one in Five Nights at Freddy's 1. When a player clicks on a ComputerMonitor, a GUI appears with a list of cameras. Clicking on a camera button switches the player's perspective to that camera's view. The system includes six cameras (Cam1 to Cam6) and a close button to exit the camera view.

## Install

1. Download the FNAF Camera System files from the GitHub repository.
2. Open your Roblox project in Roblox Studio.
3. Place the `CameraSystemScript.server.lua` script under the `ServerScriptService` service.
4. Ensure you have a folder named `Cameras` under the `Workspace` service.
5. Inside the `Cameras` folder, create parts named `Cam1` to `Cam6`.
6. Each camera part should have a child part named `CameraPart` that will be the position and orientation of the camera.
7. Ensure you have a part named `ComputerMonitor` under the `Workspace` service.
8. Add a `ClickDetector` to the `ComputerMonitor` part.

## Use

1. Click on the `ComputerMonitor` to open the camera selection GUI.
2. Click on any of the camera buttons (`Cam1` to `Cam6`) to switch to that camera's perspective.
3. Click the close button to exit the camera view and return to the player's original perspective.

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/2669828f-cf44-48c7-81c9-b90ad3df3e10?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=2669828f-cf44-48c7-81c9-b90ad3df3e10
