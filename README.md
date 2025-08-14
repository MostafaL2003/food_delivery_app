🍕 Food Delivery App
A sleek, food delivery application built with Flutter. customize your orders, and enjoy seamless checkout with an elegant user interface.
📱 Screenshots
<!-- Add your screenshots here -->
<p align="center">
  <img src="screenshots/login_screen.png" width="200" alt="Login Screen"/>
  <img src="screenshots/register_screen.png" width="200" alt="Register Screen"/>
  <img src="screenshots/home_menu.png" width="200" alt="Home & Menu"/>
  <img src="screenshots/food_details.png" width="200" alt="Food Details"/>
</p>
<p align="center">
  <img src="screenshots/cart_screen.png" width="200" alt="Cart Screen"/>
  <img src="screenshots/checkout_page.png" width="200" alt="Checkout Page"/>
  <img src="screenshots/order_confirmation.png" width="200" alt="Order Confirmation"/>
  <img src="screenshots/settings_screen.png" width="200" alt="Settings"/>
</p>
✨ Features

🔐 User Authentication: Clean sign-in and registration interface
🍔 Restaurant Menu: Browse through categorized food items (burgers, salads, sides, desserts, drinks)
🛒 Smart Cart Management: Add items with customizable add-ons (cheese, onion, sauce)
💳 Secure Payment: Integrated card payment with visual card display
📱 Dark Theme: Modern dark UI with elegant design
⚙️ Settings: Toggle between light and dark modes
🧾 Order Receipts: Detailed order confirmation with timestamps

🛠️ Built With

Flutter - Cross-platform UI framework
Dart - Programming language
Material Design - Dark theme implementation
Custom UI Components - Card-based layout design
Form Validation - Input field validation
State Management - Provider

📋 Prerequisites
Before running this project, make sure you have:

Flutter SDK (>=3.0.0)
Dart SDK (>=2.17.0)
Android Studio / VS Code
Android SDK / Xcode (for iOS)
Firebase project setup

🚀 Installation

Clone the repository
bashgit clone https://github.com/yourusername/flutter-food-delivery.git
cd flutter-food-delivery

Install dependencies
bashflutter pub get

Firebase Setup

Create a new Firebase project
Add your Android/iOS app to the Firebase project
Download and add google-services.json (Android) and GoogleService-Info.plist (iOS)
Enable Authentication, Firestore, and Storage in Firebase console


Configure API Keys

Add your Google Maps API key to:

android/app/src/main/AndroidManifest.xml
ios/Runner/AppDelegate.swift


Configure payment gateway credentials


Run the app
bashflutter run



🔑 Authentication:

Login screen with email/password
Registration with email verification


🏠 Home & Menu:

"My Restaurant" interface with delivery info
Category tabs (burgers, salads, sides, desserts, drinks)
Food items with detailed descriptions and pricing


🍔 Food Details:

High-quality food images
Customizable add-ons with pricing
"Add to cart" functionality


🛒 Cart Management:

Item quantity controls
Selected add-ons display
"Go to Checkout" button


💳 Checkout & Payment:

Visual credit card interface
Secure payment form
Card details input with validation


✅ Order Confirmation:

Detailed receipt with timestamp
Order summary with total pricing
Thank you message


⚙️ Settings:

Dark/Light mode toggle
Clean, minimal interface
