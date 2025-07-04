# Shopping UI Flutter App

A beautiful, interactive shopping app built with Flutter. This app demonstrates a modern shopping experience with authentication, smooth transitions, a responsive product grid, and a wishlist feature. All text uses the Suwannaphum font for a unique and aesthetic look.

---

## Features

### 1. **Aesthetic Welcome Screen**
- **Static Intro Widget** with:
  - AppBar widget as a title (customizable in `WelcomeScreen`)
  - Two images in a row (1 local, 1 online)
  - All elements centered with spacing
  - Two buttons: **Sign-up** and **Sign-in**
- **Navigation:** Buttons lead to sign-up or sign-in forms.

### 2. **Sign Up/In to Access the App**
- **Sign-Up Form:**
  - Full Name (first letter uppercase)
  - Email (must include `@`)
  - Password (min 6 characters)
  - Confirm Password (must match)
  - On valid submission: dialog "Account created successfully" and "Close" button navigates to main shopping screen.
- **Sign-In Form:**
  - Email (must include `@`)
  - Password (min 6 characters)
  - On valid submission: dialog "Account sign-in successfully" and "Close" button navigates to main shopping screen.

### 3. **Smooth Transition into the App**
- **Animated Navigation:** After sign-up/sign-in, the page fades out and the shopping home page fades in.

### 4. **Explore the Shopping Home Screen**
- **AppBar** titled "Our Products"
- **Horizontal PageView** for featured product images
- **Responsive GridView** for product cards (2 per row):
  - Each card includes:
    - Product image
    - Product title
    - Add to Cart icon (shows SnackBar: "Item added to the cart")
- **Hot Offers Section:**
  - Built with `ListView.builder` (5 vertically scrollable offers)
  - Each item includes an image and a description

### 5. **Wishlist**
- Tap the heart icon on a product to add/remove it from your wishlist.
- Wishlist is accessible from the navigation menu and displayed as a grid.

---

## Requirements

- **Flutter SDK** (latest stable)
- **Dart** (latest stable)
- **Fonts:** The app uses the Suwannaphum font family (all weights) located in `assets/fonts/`.

---

## How to Edit Features

### Welcome Screen
- File: `lib/features/welcome/welcome.dart`
- To change images, update the `AssetImage` and `NetworkImage` in the `Row`.
- To change fonts, update the `TextStyle` in the button and title widgets.

### Sign Up/In Forms
- Files:  
  - Sign Up: `lib/features/auth/screens/login/signup.dart`
  - Sign In: `lib/features/auth/screens/login/login.dart`
- To edit validation, update the `validator` functions in each `TextFormField`.
- To change dialog messages, update the dialog logic after form submission.

### Home Screen
- File: `lib/features/shop/screens/home/home.dart`
- To edit the product grid, update the `TGridLayout` and the product list.
- To change the "Hot Offers" section, update the `HotOffers` widget.

### Wishlist
- File: `lib/features/shop/screens/wishlist/wishlist.dart`
- To change how wishlist items are displayed, edit the grid and card logic.

### Navigation
- File: `lib/navigation_menu.dart`
- To add or remove navigation items, update the `NavigationMenu` and `NavigationController`.

---

## Fonts

The app uses the **Suwannaphum** font family for all text. All font weights (Thin, Light, Regular, Bold, Black) are included in `assets/fonts/` and registered in `pubspec.yaml`.

---

## Running the App

1. Install dependencies:
   ```sh
   flutter pub get
   ```
2. Run the app:
   ```sh
   flutter run
   ```

---

## Customization

- **Images:** Place new images in `assets/images/` and update references in code.
- **Colors & Styles:** Edit in `lib/utils/constants/colors.dart` and `lib/common/styles/`.
- **Product Data:** Update the product list in `lib/utils/constants/image_strings.dart` or wherever your product data is defined.

---

## Contribution

Feel free to fork and submit pull requests for improvements or new features!

---
