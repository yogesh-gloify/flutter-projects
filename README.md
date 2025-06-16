# Flutter Architecture

Recommended folder structure following best practices used in real-world production apps, particularly with MVVM or Clean Architecture principles. Creating a clean and scalable folder structure is key for industry-level Flutter projects, especially when your app grows larger or multiple developers are working on it.

## High-Level Project Structure

```
    lib/
├── core/                  # App-wide utilities, constants, themes, services
│   ├── constants/
│   ├── services/          # Global services (e.g., API, local storage, etc.)
│   ├── utils/             # Common helper functions, extensions
│   └── theme/             # App themes, colors, text styles
│
├── data/                  # Data layer: APIs, models, repositories (optional clean arch)
│   ├── models/            # Data models
│   ├── repositories/      # Interfaces and concrete implementations
│   └── datasources/       # API or local database handlers
│
├── domain/                # Business logic layer (optional for clean arch)
│   ├── entities/          # Pure business models
│   ├── usecases/          # Application-specific logic
│   └── repositories/      # Abstract repository definitions
│
├── presentation/          # UI layer
│   ├── screens/           # Individual screen directories
│   │   ├── home/
│   │   │   ├── home_screen.dart
│   │   │   └── widgets/
│   │   ├── login/
│   │   │   ├── login_screen.dart
│   │   │   └── widgets/
│   ├── widgets/           # Shared/reusable widgets
│   └── routes/            # App routing logic
│
├── providers/             # Riverpod / Provider state management logic
│   └── app_provider.dart
│
├── localization/          # Internationalization files
│   ├── en.json
│   └── hi.json
│
├── main.dart              # Entry point
└── app.dart               # App setup (MaterialApp, providers, etc.)

```


## ✅ Key Principles Behind This Structure
 - Scalability: Clean separation allows you to add features/modules without cluttering.

 - Reusability: Shared widgets/utilities are centralized for reuse.

 - Testability: Business logic separated from UI makes unit testing easier.

 - Readability: Anyone joining your team can understand what goes where.


## 🔧 Example Use Case
Let's say you're building a news app with login:

 - lib/presentation/screens/home/
    - home_screen.dart

widgets/news_card.dart, category_selector.dart

 - lib/data/models/news_article.dart
 - lib/data/repositories/news_repository_impl.dart
 - lib/domain/usecases/get_news_articles.dart
 - lib/providers/news_provider.dart


## 📦 Popular Foldering Approaches
Here are some approaches that teams adopt:

### Feature-first (modular) – Great for large apps:

```
lib/features/
  ├── login/
  ├── home/
  ├── settings/
```


### Layer-first (clean arch) – Great for clear separation:

```
lib/
  ├── data/
  ├── domain/
  ├── presentation/
```

You can even combine both, for example:

#### lib/features/home/data/
#### lib/features/home/presentation/


## 📘 Bonus: Recommended Packages

| Functionality        | Recommended Packages        |
|----------------------|-----------------------------|
| **State Management** | Riverpod, Bloc, Provider    |
| **Routing**          | GoRouter, auto_route        |
| **DI (DI Container)**| get_it                      |
| **API Handling**     | Dio, Retrofit               |
| **Local Storage**    | Hive, Drift                 |

---

Happy coding! 💙






