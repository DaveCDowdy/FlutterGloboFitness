# 🏋️ Flutter GloboFitness App 🌍

A comprehensive cross-platform mobile application developed using Flutter, following the **Pluralsight course "Flutter 2: Getting Started" by Simone Alessandria.**

This project demonstrates core Flutter concepts including stateful widgets, navigation, input handling, external API integration, and local data persistence.

---

## ✨ Features Implemented

This application includes several screens and features to demonstrate key mobile development patterns:

* **BMI Calculator:** A dedicated screen to calculate Body Mass Index, featuring **metric (kg/m)** and **imperial (lbs/in)** unit toggles, and ensuring proper keyboard handling using `SingleChildScrollView`.
* **Weather Page:** Integrates with the **OpenWeatherMap API** to fetch and display current weather data for a user-specified city.
    * *Security Note: API keys are securely stored and loaded via a local **`.env`** file and excluded from version control.*
* **Session Tracking:** Includes functionality to save and retrieve user training/exercise session data locally using the **`shared_preferences`** package.
* **Navigation:** Uses a **Drawer Menu** for primary navigation and a **Bottom Navigation Bar** for persistent actions.

---

## 🛠️ Technology Stack

* **Framework:** Flutter (version 3.x+)
* **Language:** Dart
* **State Management:** `StatefulWidget` and `setState()`
* **Data Persistence:** `shared_preferences`
* **Networking:** `http` package
* **Environment Variables:** `flutter_dotenv`

---

## 🚀 Getting Started

To run this project locally, follow these steps:

### 1. Prerequisites

* **Flutter SDK:** Installed and configured.
* **Android Studio / VS Code:** With Flutter and Dart plugins.
* **OpenWeatherMap API Key:** Required for the Weather Page functionality.

### 2. Clone the Repository

```bash
git clone [https://github.com/DaveCDowdy/FlutterGloboFitness.git](https://github.com/DaveCDowdy/FlutterGloboFitness.git)
cd FlutterGloboFitness
3. Set Up API Key
For the Weather Page to function, you must create a local configuration file:

Create a file named .env in the root directory of the project.

Add your OpenWeatherMap key using the exact variable name defined in the http_helper.dart class:

Bash

# .env
WEATHER_API_KEY=YOUR_OPENWEATHERMAP_API_KEY
4. Install Dependencies
Install all required packages:

Bash

flutter pub get
5. Run the Application
Connect a physical Android or iOS device, or launch an emulator, and run the app:

Bash

flutter run
📚 Acknowledgements
This project was completed as part of the following educational resource:

Course Title: Flutter 2: Getting Started

Platform: Pluralsight

Author: Simone Alessandria

✍️ Author
Dave C. Dowdy
