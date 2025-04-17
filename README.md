 
# 🚀 Flutter GetX + Get CLI Setup Guide

This guide helps you set up **GetX** in your Flutter project using **Get CLI** for structure and productivity.

---

## 📦 Step 1: Install GetX

Add `get` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
```

Then run:

```bash
flutter pub get
```

---

## ⚙️ Step 2: Install Get CLI

Get CLI is a command-line tool to generate folders, controllers, views, and bindings for GetX apps.

### Install globally:

```bash
dart pub global activate get_cli
```

Make sure the CLI is accessible from terminal:

```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

(For Windows, add `C:\Users\YourUserName\AppData\Local\Pub\Cache\bin` to your PATH)

---

## 🏗️ Step 3: Create Project Using Get CLI (Optional)

```bash
get create project your_project_name
cd your_project_name
```

Or use Get CLI inside an existing Flutter project.

---

## ✨ Step 4: Generate Files with Get CLI

Generate a new **page** (creates view + controller + binding):

```bash
get create page home
```

Generate only a **controller**:

```bash
get create controller user
```

Generate only a **view**:

```bash
get create view profile
```

---

## 📁 Example Folder Structure

```
lib/
├── app/
│   ├── modules/
│   │   └── home/
│   │       ├── controllers/
│   │       │   └── home_controller.dart
│   │       ├── views/
│   │       │   └── home_view.dart
│   │       └── bindings/
│   │           └── home_binding.dart
│   └── routes/
│       ├── app_pages.dart
│       └── app_routes.dart
```

---

## 🚀 Quick Usage Example

### home_controller.dart

```dart
import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  void increment() => count++;
}
```

---

### home_view.dart

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Obx(() => Text('Clicks: ${controller.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

---

## 📚 References

- 📘 [GetX on pub.dev](https://pub.dev/packages/get)
- 🛠 [Get CLI GitHub](https://github.com/jonataslaw/get_cli)
- 📖 [Full GetX Guide (Medium)](https://medium.com/flutter-community/getx-a-new-flutter-package-for-state-management-8b73eed67a0e)
- 📺 [YouTube GetX Tutorial](https://www.youtube.com/watch?v=CNpXbeI_slw)

---

## 💡 Tips

- Use `.obs` for reactive variables.
- Use `Obx(() => ...)` to listen to changes.
- Use `Get.to(Page())` for navigation.
- Use `Get.put(Controller())` or `Get.lazyPut()` for dependency injection.

---

Happy coding with GetX! 🎯🔥
