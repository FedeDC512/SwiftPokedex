# SwiftPokedex

## Overview

This project is a Pokédex app featuring the first 151 Pokémon, developed using Swift and SwiftUI as part of the Apple Foundation Program 2024 at the University of Palermo. The app provides a comprehensive display of Pokémon information, including their images, stats, and other details.

## Features

- **Comprehensive Pokémon Information**: Displays detailed information about each of the first 151 Pokémon, including their base stats, types, and various sprites.
- **Favorite Functionality**: Users can mark their favorite Pokémon, and filter the list to show only favorites.
- **Responsive UI**: Uses SwiftUI to create a responsive and visually appealing user interface.

## Technologies and Methodologies

### Swift and SwiftUI

- **Swift**: The core programming language used for the development of the app.
- **SwiftUI**: Employed to design the user interface, allowing for a declarative syntax to create dynamic and responsive views.

### Data Management

- **ModelData**: An observable class that manages the Pokémon data loaded from a JSON file. This data is shared across different views using the environment object pattern.
- **JSON Parsing**: Utilizes Swift's Codable protocol for parsing and loading Pokémon data from a JSON file, ensuring type safety and ease of use.

### Design Patterns

- **MVVM (Model-View-ViewModel)**: The app follows the MVVM design pattern to separate business logic from the UI, making the codebase more modular and testable.
- **Environment Object**: Leverages SwiftUI's environment object for state management, ensuring that data is easily accessible and updatable across various views.

### UI Components

- **Reusable Views**: Custom views like `PokemonRow`, `PokemonDetails`, and `ImagePreview` are designed to be reusable and composable, promoting code reusability and readability.
- **Conditional Views**: Implements conditionally rendered views based on Pokémon attributes, such as displaying different sprites or decorations based on the Pokémon's type.

## Running the Project

To run the project, you will need:

- **Xcode**: The latest version of Xcode to build and run the SwiftUI application.
- **macOS**: A Mac running a recent version of macOS to support the latest Swift and SwiftUI features.

### Steps:

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the application on the iOS simulator or a physical device.

## Conclusion

This Pokédex project demonstrates the effective use of Swift and SwiftUI to create a dynamic and interactive application. By following modern design patterns and leveraging powerful SwiftUI features, the app provides a smooth and engaging user experience for Pokémon enthusiasts.