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

### Key Concepts

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

