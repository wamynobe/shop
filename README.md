# Flutter Demo


Offline-first Flutter demo implementing collections, bottle detail, sign in.

## Prerequisites

- Flutter stable (use fvm or your global install)
- Dart SDK that matches Flutter stable (managed by Flutter)
- iOS: Xcode + CocoaPods, Android: Android Studio/SDKs

Verify tools:


```bash
# With FVM
fvm flutter --version
fvm dart --version
```

## Setup

1) Install dependencies

```bash
fvm flutter pub get
```

2) Generate code (freezed, drift, auto_route, flutter_gen)

```bash
# With FVM
fvm dart run build_runner build --delete-conflicting-outputs

```


## Project highlights

- State management: `flutter_bloc` + `freezed`
- Offline-first local DB: Drift (sqlite) with upserts and detail graphs
- Assets-only mock upstream, hydration-ready
- Codegen: `freezed`, `json_serializable`, `auto_route`, `flutter_gen`
- Theming: design tokens via `core/theme/configs/custom_theme.dart`

## Implemented features

- Collections grid (responsive column count)
  - `features/collection/presentation/views/collection_view.dart`
- Collection detail screen with stretchy image header and sticky CTA
  - `features/collection/presentation/views/collection_detail_view.dart`
  - Stretchy header: `widgets/bottle_stretchy_image.dart`
  - Provider header (chip + close + dropdown): `widgets/provider_header.dart`
  - Segmented TabBar matching Figma: `widgets/segmented_tab_bar.dart`
  - Details tab: `widgets/details_view.dart` (tokens, two-column rows)
  - Tasting notes tab: `widgets/tasting_notes_view.dart` (expert + user)
  - History tab: `widgets/history_timeline_view.dart` using `timelines_plus`

## Data flow

- Repository: `features/collection/data/repositories/collection_repository_impl.dart`
- Local DB (Drift): `core/db/app_database.dart`
- Local JSON mock assets: `assets/mock_data/*.json`
- Detail load-by-id: `CollectionDetailCubit` → state → UI bind
