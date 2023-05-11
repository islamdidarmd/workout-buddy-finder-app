# Workout Buddy Finder
This app will help people find nearby people with similar interests. It was created as my final year project for graduation.

## Demo
<img src="https://github.com/islamdidarmd/android-project-template/blob/master/s1.png" width="200" height="400" /> <img src="https://github.com/islamdidarmd/android-project-template/blob/master/s2.jpg" width="200" height="400" />


## Functionality
- Workout buddy finder app helps users discover and find workout buddies.
- Suggestions are based on interests and locality.
- Creates an exciting moment which’ll help the exercisers to pass their workout time.
- Live Chatting with matched people
- View total burned calorie
- Manage Application Theme

## Architecture
Project is written by following `Clean Code Architecture`. Has `Development`and `Production`build flavors
set for both Android and iOS.

## Directory Structure
1. `lib/app` contains the entry points depending on Environment
2. `lib/core` contains the core of the app
3. `lib/di` contains the dependency injection codes
4. `lib/env` contains the environment files
5. `lib/features` contains the features
6. `lib/generated` contains the generated asset constants
7. `lib/navigation` contains files related to Routing
8. `lib/theme` contains theming settings of the app

## Technology Used
1. `flutter_bloc` for State Management
2. `go_router` for Navigation
3. `get_it` and `injectable` for dependency injection
4. `firebase` for Auth, 
Real time chat, 
image storing and `Firestore` for other data storing
5. `flutter_hooks` to reduce boilerplate code 
6. `freezed` for data classes and pattern matching
7. `dart code metrics` for enhanced lint rules

## Getting Started
1. Download or Clone the repository
2. Unzip downloaded file (if downloaded)
3. Open the project in `Android Studio`.
4. Open Run configurations. Set `lib/env/env_development.dart` file as target and build flavor 
`Development`.

### Contributions are welcome