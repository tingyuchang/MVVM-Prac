# Swift


## MVVM
[Example MVVM](https://github.com/kudoleh/iOS-Clean-Architecture-MVVM)

### MVVM in SwiftUI
[Stop using MVVM for SwiftUI](https://developer.apple.com/forums/thread/699003)

## Dependency Injection
[DI in iOS: Complete guide](https://medium.com/its-tinkoff/di-in-ios-complete-guide-cd76a079d2d)

## Flow Coodinator

## Data Transfer Object (DTO)

## Combine
[sample code](https://github.com/pallavtrivedi03/FlightsBooking_iOS_App)

## Data Binding

- Reactive cocoa
- RxSwift
- Observable

### Observable
- ObservableObject

#### @State vs. @ObservedObject vs. @EnvironmentObject
- @State
  - using in View's `private` properties
  - should used in `struct` only
- @ObservedObject
  - a class that implement `ObservableObject` protocol and the properties which marks as `@Publish` in the class, it will send notification to binding View
- @EnvironmentObject
  - lets us share model data anywhere it’s needed, while also ensuring that our views automatically stay updated when that data changes.
  
- @StateObject
  - @ObservedObject only add sub/pub relationship between view & class, when view reset, model will reset as well
  - @StateObject will store model to other place so it would not reset by view's reset
  - How to choice StateObject & ObservedObject
    - if you do not care model will reset by view or you want this behavior, using @ObservedObject
    - if you want to keep model then use @StateObject
    - but using @StateObject has a little effect about performance.
- @Binding
- @State lifecycle


## Actor

- actor is reference type
- actor does not support inheritance
- function in actor is isolated in default, even this function did't access any mutable property.
- we can use `nonisolated` to avoid above complier error
- well, using actor can decrease cases of data race, but it's not perfect, imaging we have 2 queue to access actor, the result after 2 queues must be the same no matter which one exe cute first, but the sequence of these 2 queues might be difference, so we can't predict the middle result of these actions, we have to notice this. 

### Data Race in Swift 
[Ref article](https://www.avanderlee.com/swift/thread-sanitizer-data-races/#what-are-data-races)
- Thread Sanitizer, also known as TSan, is an LLVM based tool to audit threading issues in your Swift and C language written code

#### simple example for data race
```Swift
private var name: String = ""

func updateName() {
  DispatchQueue.global().async {
    self.name.append("XXXXX")
  }
  
  print(self.name)
}

```


#### data race in lazy
```Swift
private lazy var name: String = ""

func updateName() {
  DispatchQueue.global().async {
    self.name.append("XXXXX")
  }
  
  print(self.name)
}
```

*How to resolve data race?*
- using lock queue [chekck it](https://www.avanderlee.com/swift/concurrent-serial-dispatchqueue/)
- using Actor 
  - The Concurrency Framework announced at WWDC 2021 introduced Actors for synchronizing access to data. This is the best solution for solving data access related bugs and should be more straightforward than dispatch queues.
  - [Check it](https://www.avanderlee.com/swift/actors/)


### @MainActor
[MainActor usage in Swift explained to dispatch to the main thread](https://www.avanderlee.com/swift/mainactor-dispatch-main-thread/)
- MainActor will help you update your UI in the main thread.
- @globalactor is a singleton
- can use MainActor to peplace `DispatchQueue.main.async`




## Others

- async & await
  - [ Async await in Swift explained with code examples.](https://www.avanderlee.com/swift/async-await/)
- concurrency
    - DispatchQueue
- open    
- Task
- unowned vs weak 
