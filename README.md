# BeASnow — Codebase & Documentation

Be AS now is a ROBLOX game I'm building. This repository contains documentation and the Luau scripts used for the game's menus and UI systems. I started the project in August and have been iterating on it since then.

Enjoy!

## Table of contents
- About
- Technologies
- Project structure
- Getting started (Roblox Studio)
- How to run / test
- Contributing
- License
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

## Contact
Owner: jsocoollol (Jillian)