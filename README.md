# Riverpod

Riverpod is a state management library for the Flutter framework, developed by the same team behind the Provider package. It aims to simplify the management of application state and dependency injection in Flutter applications.

In Flutter, state management refers to the way an application handles and updates its data. It's important to manage state efficiently to ensure that changes in data are reflected accurately throughout the user interface. Riverpod provides a simple and declarative approach to managing state in Flutter apps.

Riverpod introduces the concept of providers, which are responsible for holding and exposing application state or dependencies. A provider can be considered as a source of data that can be accessed by other parts of the application. It can be used to store application-wide state, manage dependencies, or even encapsulate API calls.

The key benefits of using Riverpod in your Flutter app include:

1. **Simplicity**: Riverpod follows a simple and intuitive API design, making it easy to understand and use.
2. **Scoped State Management**: Riverpod supports scoping of providers, allowing you to manage state within specific parts of your app rather than globally. This helps in organizing and isolating state changes.
3. **Dependency Injection**: Riverpod supports dependency injection, which means you can easily provide dependencies to different parts of your application without tightly coupling them.
4. **Efficient Rebuilds**: Riverpod leverages the Flutter framework's reactive system to ensure that only the necessary parts of the user interface are rebuilt when state changes occur.
5. **Testing Support**: Riverpod provides utilities for testing your application by mocking and overriding providers, allowing you to write comprehensive unit and integration tests.

To use Riverpod in your Flutter project, you need to add the `riverpod` package as a dependency in your `pubspec.yaml` file. Then, you can define providers using the `Provider` or `ChangeNotifierProvider` classes. Providers can be accessed using the `ProviderContainer` or by using Riverpod's widget integration.

Overall, Riverpod simplifies state management in Flutter, promotes good architectural practices, and helps you build scalable and maintainable applications. It's a powerful tool for managing application state and dependencies, making your Flutter development experience smoother and more efficient.


## Providers

- **Provider**: Declared globally in Riverpod as they are immutable.
- **StateProvider**: Used to update the value from the outside, unlike the simple provider which is read-only.
- **StateNotifier and StateNotifierProvider**: Used to update values of complex data types other than simple strings and integers, such as objects.
- **FutureProvider**: Deals with API's to get the data from online sources

## Riverpod Providers

Riverpod is a state management library for Flutter that helps you manage state and data in a clean and efficient manner. It provides various types of providers to handle different scenarios in your application. Here are the key concepts related to different Riverpod providers:

### Provider
The `Provider` is the most basic provider in Riverpod. It is used to expose a value or an object to other parts of your application. It can be used with any type of data or objects.

### ChangeNotifierProvider
`ChangeNotifierProvider` is a type of provider that is specifically designed to work with Flutter's `ChangeNotifier` class. It allows you to easily expose and listen to changes in a `ChangeNotifier` object.

### FutureProvider
`FutureProvider` is used to handle asynchronous data. It allows you to define a future value and automatically handle loading, error, and success states. It is typically used when fetching data from an API or performing other asynchronous operations.

### StreamProvider
`StreamProvider` is similar to `FutureProvider`, but it works with `Stream` objects. It allows you to expose a stream of data and automatically update the UI whenever new data is emitted by the stream.

### ProviderContainer
`ProviderContainer` is a special provider that allows you to create and manage providers dynamically at runtime. It is useful when you need to create providers on-demand or update the value of a provider from a specific scope.

### Family
`Family` is a concept in Riverpod that allows you to create providers with dynamic parameters. It enables you to define a provider that takes dynamic arguments and creates a new provider instance for each unique combination of arguments.

### ScopedProvider
`ScopedProvider` is used to limit the scope of a provider to a specific part of your application. It allows you to create providers that are only accessible within a specific widget subtree.

### AutoDisposeProvider
`AutoDisposeProvider` is a provider that automatically disposes its value when it is no longer used by any part of your application. It is useful when you have providers that are no longer needed and you want to release resources associated with them.

### ProviderOverride
`ProviderOverride` is a provider that allows you to override the value of an existing provider within a specific scope. It is useful when you need to replace a provider with a different value or object for testing or mocking purposes.

### Key Concepts(Important Points)

1. Providers are declared globally in Riverpod because they are immutable.
2. The first type of provider is the `provider` which is a read-only widget that provides data to other widgets.
3. `ProviderRef` is used to communicate with other providers.
4. `ProviderScope` ensures that there is no leakage of state by keeping a check on the providers used.
5. All Flutter applications using Riverpod must contain a `[ProviderScope]` at the root of their widget tree.
6. The difference between `ConsumerWidget` and `Consumer` is that `ConsumerWidget` builds the whole widget from scratch when there is a change, whereas `Consumer` rebuilds only a certain part.
7. `ref.watch` is used to continuously listen to changes in a variable, whereas `ref.read` is only used for one-time reads.
8. `ref.read` is commonly used inside functions and lifecycle methods.
9. In the `StateNotifier` class, the value of state can be changed within the class itself but not from outside because the state is immutable externally.
10. `select` is used when you want the widget to rebuild only when there is a change in a particular selected value.
11. `FutureProvider` is used with futures, such as asynchronous values and HTTP calls.
12. Riverpod provides easy access to provider state.



