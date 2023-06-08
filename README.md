# Riverpod

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

