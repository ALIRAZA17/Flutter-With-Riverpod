Providers
Provider
StateProvider
StateNotifier and StateNotifierProvider

1- We declare providers in riverpod globally because they are immutable

2- First type of providers is provider which is a read only widget  giving data to other widgets

3- ProviderRef talks to other providers

4- Provider Scope keeps a check on the providers used and ensures that
there is no leakage of state

5- All Flutter applications using Riverpod must contain a [ProviderScope] at the root of their widget tree.

6- The difference between consumerWidget and Consumer is that Consumer widget builds the whole widget from scratch when there is some kind of change whereas consumer builds only a certain part4

7- ref.watch is used to continuosly listening to the changes in the varaiable where ref.read is only a one time read

8- StateProvider is used to update the value from the outside which is not possible in simple provider which is a read only

9- ref.read is mostly used inside functions and lifecycle methods

10- StateNotifier is used to update the values of complex datatypes other than simple strings and integers such as Objects

11- In statenotifier class we can change the value of state and not outside it because outside it the state is immutable

12- 