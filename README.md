# SliverAppBar Example in Flutter

This Flutter project demonstrates the usage of `SliverAppBar` within a custom scroll view, showcasing its flexibility and power for building beautiful, scrolling app bar effects. Additionally, it includes examples of `SliverList.builder` and `SliverGrid.builder` for efficient item building.

## Features

- **SliverAppBar**: A flexible app bar that can be expanded, collapsed, and pinned as you scroll.
- **CustomScrollView**: A scrollable area that integrates various slivers, including `SliverAppBar`, `SliverList.builder`, and `SliverGrid.builder`.
- **Smooth Transitions**: Seamless animations between different states of the app bar.
- **SliverList.builder**: A scrollable list of items built on demand.
- **SliverGrid.builder**: A scrollable grid of items built on demand.

## Getting Started

### Prerequisites

- Flutter SDK (>= 2.0.0)
- Dart SDK (>= 2.12.0)
- A code editor like Visual Studio Code or Android Studio

<details> 
    <summary><h2>Photos📸</h2></summary>
    <p>
    <table align="center">
        <tr>
            <td><img src="https://github.com/Aayush014/sliver_appbar/assets/133498952/c3eb9836-2335-4af1-8805-42304c4b1529" alt="Image 2" width="180" height="auto"></td>
            <td><img src="https://github.com/Aayush014/sliver_appbar/assets/133498952/c2b2f8bc-e993-4157-a21d-787de22a7d65" alt="Image 3" width="180" height="auto"></td>
        </tr>
    </table>
    </p>
</details>
<details>
    <summary><h2>📽️Video</h2></summary>
    <p>
    <table align="center">
        <tr>
            <video src ="https://github.com/Aayush014/sliver_appbar/assets/133498952/57f2bad5-920c-468a-8c25-26c5dd874d3a"></video> </h1>
        </tr>
    </table>   
    </p>
</details>

### Installation

1. *Clone the repository:*

    ```bash
    git clone https://github.com/Aayush014/sliver_appbar.git
    ```

2. *Install dependencies:*

    ```bash
    flutter pub get
    ```

3. *Run the app:*

    ```bash
    flutter run
    ```

## Project Structure

- **lib/**
  - **main.dart**: Entry point of the application.
  - **sliver_appbar_page.dart**: Contains the implementation of the `SliverAppBar` example along with `SliverList.builder` and `SliverGrid.builder`.

### main.dart

```dart
import 'package:flutter/material.dart';
import 'sliver_appbar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliverAppBarPage(),
    );
  }
}
```
### sliver_appbar_page.dart
```dart
import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar Example'),
              background: Image.network(
                'https://example.com/your_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 20, // Adjust the number of list items here
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('List Item #$index'),
              );
            },
          ),
          SliverGrid.builder(
            itemCount: 20, // Adjust the number of grid items here
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.teal[100 * (index % 9)],
                child: Center(
                  child: Text('Grid Item #$index'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
```
# SliverList.builder and SliverGrid.builder Explanation

## SliverList.builder
`'SliverList.builder'` is used to create a linear list of items on demand. This approach is efficient as it only builds the visible items on the screen plus a few extra for buffering.

```dart
SliverList.builder(
  itemCount: 20, // Number of items in the list
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text('List Item #$index'),
    );
  },
),
```
- **itemCount**: The total number of items in the list.
- **itemBuilder**: A function that creates the widget for each item based on its index.

## SliverList.builder
`'SliverGrid.builder'` is used to create a 2D grid of items on demand. This is similar to `'SliverList.builder'` but for grids. The `'SliverGridDelegateWithFixedCrossAxisCount'` defines the grid layout, such as the number of columns and spacing.

```dart
SliverGrid.builder(
  itemCount: 20, // Number of items in the grid
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns
    mainAxisSpacing: 10.0,
    crossAxisSpacing: 10.0,
    childAspectRatio: 1.0,
  ),
  itemBuilder: (BuildContext context, int index) {
    return Container(
      color: Colors.teal[100 * (index % 9)],
      child: Center(
        child: Text('Grid Item #$index'),
      ),
    );
  },
),
```

- **itemCount**: The total number of items in the list.
- **gridDelegate**: Defines the structure of the grid, including the number of columns and spacing.
- **itemBuilder**: A function that creates the widget for each item based on its index.

## Contribution

We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/YourFeature).
3. Commit your changes (git commit -am 'Add some feature').
4. Push to the branch (git push origin feature/YourFeature).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions, feel free to open an issue or contact me at [aayushpatel01411@gmail.com].

---

Happy coding!
