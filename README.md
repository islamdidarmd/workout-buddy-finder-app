# Workout Buddy Finder
This app will help people find nearby people with similar interests. It was created as my final year project for graduation.

## Demo
<img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/a27c93a6-4dad-463c-b258-5b9dde1ca29b" width="200" height="400" />
<img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/eb843bd1-b02c-4bf0-a591-75ad86892fb9" width="200" height="400" /> 
<img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/c52f7572-a8ad-4e42-bd26-9d91402e9262" width="200" height="400" /><img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/e09c9530-b393-4ef8-a43d-e829f291b7c2" width="200" height="400" /> 
<img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/9099608c-aa7c-4127-97d0-567665b98578" width="200" height="400" /> 

<img src="https://github.com/islamdidarmd/workout-buddy-finder-app/assets/27812028/496817c3-2b2f-477b-b5ef-2ded49478de9" width="200" height="400" /> 


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
