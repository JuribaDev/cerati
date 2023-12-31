# Cerati
## Introduction
Cerati is a mobile application designed for professionals, freelancers, and creatives who want to showcase their work to the world. With Cerati, you can effortlessly create and customize your own website portfolio, presenting your projects, skills, and services in a professional and appealing manner.

## Features
- **User-Friendly Interface:** Cerati offers an intuitive design experience, making it simple for users without technical expertise to create stunning portfolios.
- **Customizable Templates:** Select from a variety of pre-designed templates that suit your profession and personalize them to reflect your unique style.
- **Responsive Design:** Your portfolio will look great on any device, from smartphones to tablets to desktop computers.
- **Social Media Integration:** Link your social media profiles directly, letting visitors connect with you across various platforms.
- **SEO Optimization:** Built-in SEO tools help your portfolio rank higher in search results, increasing your visibility online.
- **Analytics:** Track visitors and engagement on your portfolio to understand what captures interest and optimize accordingly.

## Technology Stack
Cerati is built using modern technologies, including:

- Flutter framework for mobile development.
- Backend services with Laravel and Go gRPC service for analytics.
- Nex.js for web-based components.
---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the
following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Cerati works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov)
.

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows
the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:cerati/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include
the new locale.

```xml
    ...

<key>CFBundleLocalizations</key>    <array>
<string>en</string>
<string>es</string>
</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_ar.arb`

```arb
{
    "@@locale": "ar",
    "counterAppBarTitle": "عداد",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```



[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html

[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
