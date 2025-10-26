# BeASnow — Codebase & Documentation

Be A Snow is a ROBLOX game I'm building. This repository contains documentation and the Luau scripts used for the game's menus and UI systems. I started the project in August and have been iterating on it since then.

## Table of contents
- About
- Technologies
- Project structure
- Getting started (Roblox Studio)
- How to run / test
- Contributing
- Credits
- Contact

## About
This repository documents the code and structure for Be A Snow and contains the primary scripts I have written in Roblox Studio. It is intended for personal reference and to help onboard contributors in the future.

## Technologies
- Language: Luau (ROBLOX)
- Editor: Roblox Studio

## Project structure (examples)
- src/
  - MainMenuManager.luau — handles main menu behavior
  - HatInvManager.luau — hat inventory logic
  - MenuCameraPanScript.luau — camera panning to follow the mouse in the menu
  - PlayButtonEffectsScript.luau — visual/audio effects for play button
  - LoadingScript.luau — loading screen behaviour

## Getting started (Roblox Studio)
1. Open Roblox Studio.
2. Import the project assets or copy the scripts into the appropriate places under StarterGui/ServerScriptService/StarterPlayerScripts/ReplicatedStorage/ReplicatedFirst as needed.
3. Ensure any required assets (images, audio, GUIs) are added to the game's Asset Manager.
4. Run in Studio Play mode to test UI and scripts.

## How to run / test
- Use Play (Solo) in Roblox Studio to test UI interactions and camera panning.
- Check the Output window for runtime errors; Luau will show stack traces for script errors.
- For each new feature, create a small test scene in Studio to isolate behavior before integrating.

## Contributing
- Keep commits small and focused (one feature or fix per commit).
- Use descriptive commit messages: what changed and why.
- Prefer feature branches for larger changes and open a pull request for review.

## Credits
- Video link to dialouge system: https://www.youtube.com/watch?v=hPEE5ol6xc4
- Model link to dialouge system: https://create.roblox.com/store/asset/80608769509945/NPC-Dialogue-System

- Github link to inventory core GUI replacement: https://github.com/RyanLua/Satchel
- Model link to inventory core GUI replacement: https://create.roblox.com/store/asset/13947506401/Satchel-Modern-backpack-system?viewFromStudio=true&keyword=&searchId=606ad2e0-eb23-447e-9c3e-b367bb297258

## Contact
Owner: jsocoollol (Jillian)
Email: jill.salatino@gmail.com
