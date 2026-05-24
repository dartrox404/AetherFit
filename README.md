# AetherFit 💪🔥

A fitness tracking UI app built with Flutter — clean dashboard design with gauges, charts, and a dark athletic aesthetic.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=Dart&logoColor=white)

## 📸 UI

![UI](assets/images/imagesui.jpeg)

---

## ✨ Features

- 🏃 **Activity Rings & Gauges** — Syncfusion circular gauges for steps, calories, and active minutes
- 📊 **Weekly Progress Charts** — fl_chart bar/line charts for workout history
- 🧭 **Clean Navigation** — GoRouter with structured routing
- 🎨 **SVG Assets** — Crisp vector icons at any screen size
- 📐 **Centralized Constants** — AppSizes, AppColors, AppTextStyles in dedicated files
- 🔤 **Custom Fonts** — Montserrat + Poppins for a modern fitness-app feel
- 📱 **Responsive Layout** — Adapts across screen sizes

---

## 🛠️ Tech Stack

| Package | Purpose |
|---|---|
| `go_router ^17.2.3` | Navigation & routing |
| `syncfusion_flutter_gauges ^33.2.7` | Activity rings & progress gauges |
| `fl_chart ^1.2.0` | Workout stats charts |
| `flutter_svg ^2.3.0` | SVG icon rendering |
| `iconsax ^0.0.8` | Modern icon set |
| `gap ^3.0.1` | Clean spacing |

---

## 📁 Project Structure

```
lib/
  core/
    constants/       # AppSizes, AppColors, AppTextStyles
  features/
    dashboard/       # Main screen with gauges & charts
    workout/         # Workout tracking screens
  shared/
    widgets/         # Reusable components
```

---

## 🚀 Getting Started

```bash
git clone https://github.com/dartrox404/AetherFit.git
cd AetherFit
flutter pub get
flutter run
```

---

## 🗺️ Roadmap

UI-only at this stage. Planned next steps:

- [ ] Connect real step count via `health` package
- [ ] Firebase backend for workout logging
- [ ] User auth + personal progress history
- [ ] Push notifications for workout reminders

---

## 👨‍💻 Author

**Arslan Javed** — Flutter Developer
- GitHub: [dartrox404](https://github.com/dartrox404)
- Gmail :arslanjaved57420@gmail.com

---

> ⚠️ Practice project — UI only, demo data used. Part of my Flutter learning journey.