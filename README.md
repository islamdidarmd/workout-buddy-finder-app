# flutter-project-template
A template project with basic folder structure to start a new Android Project

## Demo
<img src="https://github.com/islamdidarmd/android-project-template/blob/master/s1.png" width="200" height="400" /> <img src="https://github.com/islamdidarmd/android-project-template/blob/master/s2.jpg" width="200" height="400" />


## Functionality
1. Finds repositories from github from given keyword

## Architecture
Project is written by following `Clean Code Architecture`
### Directory Structure
#### App
1. `lib/data` contains the `data` layer
2. `lib/domain` contains the `domain` layer
3. `lib/ui` contains the `presentation` layer
4. `lib/app` contains the `service locator` for `dependency injection` and `main.dart`

## Technology Used
1. `flutter_bloc` for State Management
2. `rxdart` for Reactive Programming
3. `get_it` for `Service Locator`
4. `Dio` for networking
5. `json_serializable` for serialization

## Getting Started
1. Download or Clone the repository
2. Unzip downloaded file (if downloaded)
3. Open the project in `Android Studio`. This project is developed in `Android Studio Arctic Fox 2020.3.1 Patch 4`
4. Run the app
