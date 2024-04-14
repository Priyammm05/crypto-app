## CryptoApp

CryptoApp is an iOS application designed using Clean Architecture and MVVM, implemented with SwiftUI. It fetches information about the top cryptocurrencies from the CoinGecko API and provides users with real-time performance data.

### Description

CryptoApp, also known as CryptoApp, offers a straightforward interface for monitoring the cryptocurrency market. It is built with SwiftUI and the Combine framework, leveraging CoinGecko's free APIs to access market data and functionality through specific URL requests. This project serves as a demonstration of MVVM with SwiftUI, Combine, and Clean Architecture principles.

### Concepts Utilized

- **Core Data:** Utilized for data persistence.
- **Clean Architecture:** Ensures separation of concerns and maintainability.
- **MVVM:** Model-View-ViewModel architectural pattern for clear separation of UI and business logic.
- **Coordinator Pattern:** For navigation and flow control.
- **Dependency Injection:** Enables loose coupling and testability.
- **Caching Images:** Efficiently handles image retrieval and caching for improved performance.

### How to Run

CryptoApp requires iOS 15.0 or later. If needed, developers can adjust the deployment target to support lower iOS versions.

### API

CoinGecko API is used for fetching cryptocurrency market data.

### Requirements

- iOS 15.0+
- Swift 5
