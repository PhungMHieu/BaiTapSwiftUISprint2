# HealthGuru - Ứng dụng Quản lý Sức khỏe

<p align="center">
  <img src="https://img.shields.io/badge/iOS-16.6+-007AFF?style=flat-square&logo=ios&logoColor=white" alt="iOS 16.6+">
  <img src="https://img.shields.io/badge/SwiftUI-5.0-FA7343?style=flat-square&logo=swift&logoColor=white" alt="SwiftUI 5.0">
  <img src="https://img.shields.io/badge/Xcode-14.0+-1575F9?style=flat-square&logo=xcode&logoColor=white" alt="Xcode 14.0+">
  <img src="https://img.shields.io/badge/Platform-iPhone%20%7C%20iPad-lightgrey?style=flat-square" alt="Platform">
</p>

## 📖 Giới thiệu

HealthGuru là một ứng dụng quản lý sức khỏe được xây dựng với **SwiftUI**, giúp người dùng theo dõi các chỉ số sức khỏe cá nhân, đặc biệt là nhịp tim và huyết áp. Ứng dụng được thiết kế với giao diện hiện đại, trực quan và dễ sử dụng.

## ✨ Tính năng chính

### 🚀 Onboarding Flow
- **Page 1**: Giới thiệu ứng dụng với giao diện chào mừng
- **Page 2-4**: Hướng dẫn người dùng chọn các tính năng quan tâm:
  - Theo dõi sức khỏe tổng quát
  - Đo lường các chỉ số cơ bản
  - Quản lý thông tin cá nhân

### 💖 Health Guru (Theo dõi Sức khỏe)
- **Dashboard chính**: Hiển thị tổng quan tình trạng sức khỏe
- **Đo lường chỉ số**: Ghi nhận nhịp tim, huyết áp và các chỉ số khác
- **Lịch sử theo dõi**: Xem lại các lần đo trước đó
- **Phân tích xu hướng**: Biểu đồ và báo cáo chi tiết

### 👤 Profile Management
- **Thông tin cá nhân**: Tên, tuổi, giới tính
- **Thông số cơ thể**: Chiều cao, cân nặng
- **BMI Calculator**: Tự động tính toán chỉ số BMI
- **Validation**: Kiểm tra tính hợp lệ của dữ liệu đầu vào

### ⚙️ Settings
- **Cài đặt Profile**: Quản lý thông tin người dùng
- **Nhắc nhở hằng ngày**: Thiết lập thông báo
- **Đổi icon ứng dụng**: Tùy chỉnh giao diện
- **Ngôn ngữ**: Thay đổi ngôn ngữ hiển thị
- **Feedback & Support**: Đánh giá và hỗ trợ
- **Privacy Policy**: Chính sách bảo mật

## 🏗️ Kiến trúc dự án

### Cấu trúc thư mục
```
BaiTapSwiftUISprint2/
├── BaiTapSwiftUISprint2App.swift          # Entry point của ứng dụng
├── Assets.xcassets/                       # Tài nguyên hình ảnh và màu sắc
│   ├── Color/                            # Bảng màu tùy chỉnh
│   ├── HealthGuru/                       # Icons cho module sức khỏe
│   ├── OnBoard/                          # Hình ảnh onboarding
│   ├── Profile/                          # Avatar và profile icons
│   ├── Setting/                          # Icons cài đặt
│   └── TabBar/                           # Icons tab bar
└── UI/                                   # Giao diện người dùng
    ├── CustomModel/                      # Data models
    ├── CustomV/                          # Custom views và components
    ├── HealthGuru/                       # Module theo dõi sức khỏe
    ├── Information/                      # Module thông tin cá nhân
    ├── InformationHeartV/                # Module đo nhịp tim
    ├── Modifier/                         # Custom view modifiers
    ├── OnBoardTab/                       # Onboarding flow
    ├── Profile/                          # Profile management
    ├── Root/                             # Navigation root
    ├── Setting/                          # Settings module
    └── SettingHealthTab/                 # Tab bar controller
```

### Design Pattern
- **MVVM Architecture**: Tách biệt logic và giao diện
- **ObservableObject**: State management với Combine framework
- **NavigationStack**: Modern navigation với iOS 16+
- **@AppStorage**: Persistent data storage
- **Environment Objects**: Dependency injection

## 🎨 SwiftUI vs UIKit

### 🚀 Ưu điểm của SwiftUI

#### 1. **Declarative Syntax (Cú pháp khai báo)**
```swift
// SwiftUI - Ngắn gọn và rõ ràng
Text("Hello World")
    .font(.title)
    .foregroundColor(.blue)
    .padding()

// UIKit - Phức tạp hơn
let label = UILabel()
label.text = "Hello World"
label.font = UIFont.preferredFont(forTextStyle: .title1)
label.textColor = .blue
```

#### 2. **Live Preview**
- **SwiftUI**: Xem trước giao diện ngay lập tức trong Xcode
- **UIKit**: Phải build và chạy simulator

#### 3. **State Management**
```swift
// SwiftUI - Tự động update UI khi state thay đổi
@State private var isToggled = false

Toggle("Enable Feature", isOn: $isToggled)
```

#### 4. **Cross-platform**
- Dễ dàng chia sẻ code giữa iOS, macOS, watchOS, tvOS
- Responsive design tự động

#### 5. **Animation & Transitions**
```swift
// SwiftUI - Animation đơn giản
withAnimation(.easeInOut) {
    isVisible.toggle()
}

// UIKit - Phức tạp hơn nhiều
UIView.animate(withDuration: 0.3, animations: {
    // Animation code
})
```

#### 6. **Modern Features**
- **Combine Integration**: Reactive programming built-in
- **Property Wrappers**: @State, @Binding, @ObservedObject
- **Navigation**: NavigationStack với type-safe routing

### 📊 So sánh Performance

| Tiêu chí | SwiftUI | UIKit |
|----------|---------|--------|
| **Learning Curve** | Dễ học hơn | Phức tạp hơn |
| **Development Speed** | Nhanh hơn | Chậm hơn |
| **Performance** | Tốt (iOS 15+) | Excellent |
| **Customization** | Giới hạn | Không giới hạn |
| **Community Support** | Đang phát triển | Rất lớn |
| **Debugging** | Thách thức | Dễ dàng hơn |

### 🔄 Migration Strategy
Dự án này sử dụng **hybrid approach**:
- SwiftUI cho giao diện chính
- UIKit cho custom TabBar và NavigationBar appearance
- Interoperability thông qua UIViewRepresentable

## 🛠️ Công nghệ sử dụng

### Core Technologies
- **SwiftUI**: Declarative UI framework
- **Combine**: Reactive programming
- **Core Data**: Local data persistence (planned)
- **UserDefaults**: App settings storage

### Architecture Patterns
- **MVVM**: Model-View-ViewModel
- **Coordinator Pattern**: Navigation management
- **Repository Pattern**: Data layer abstraction

### Third-party Libraries
- Không sử dụng external dependencies (Native approach)

## 📱 Screenshots & Demo

### Onboarding Flow
```
Page 1: Welcome Screen → Page 2: Health Goals → Page 3: Preferences → Page 4: Getting Started
```

### Main Features
```
Health Dashboard → Measurement Flow → Profile Setup → Settings Panel
```

## 🚀 Getting Started

### Prerequisites
- **Xcode 14.0+**
- **iOS 16.6+**
- **Swift 5.0+**
- **macOS Ventura** (recommended)

### Installation

1. **Clone Repository**
   ```bash
   git clone https://github.com/PhungMHieu/BaiTapSwiftUISprint2.git
   cd BaiTapSwiftUISprint2
   ```

2. **Open Project**
   ```bash
   open BaiTapSwiftUISprint2.xcodeproj
   ```

3. **Build & Run**
   - Chọn target device/simulator
   - Nhấn `Cmd + R` để build và chạy

### Configuration

#### Custom Colors
Dự án sử dụng color assets được định nghĩa trong `Assets.xcassets/Color/`:
- `PrimaryApp`: Màu chủ đạo
- `Background`: Màu nền
- `Neutral1-5`: Các tông màu neutral
- `Good/Warning`: Màu trạng thái

#### App Icon
Thay đổi app icon trong `Assets.xcassets/AppIcon.appiconset/`

## 🧪 Testing

### Unit Tests
```bash
# Chạy unit tests
Cmd + U
```

### UI Tests
```bash
# Chạy UI tests
Cmd + Shift + U
```

## 📈 Roadmap

### Version 1.1
- [ ] Core Data integration
- [ ] HealthKit integration
- [ ] Push notifications
- [ ] Dark mode support

### Version 1.2
- [ ] Widgets
- [ ] Apple Watch app
- [ ] Export data feature
- [ ] Multiple user profiles

### Version 2.0
- [ ] AI health insights
- [ ] Doctor consultation
- [ ] Medication reminders
- [ ] Social features

## 🤝 Contributing

### Development Workflow
1. Fork repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

### Code Style
- Follow Swift API Design Guidelines
- Use SwiftLint for code formatting
- Write meaningful commit messages
- Add unit tests for new features

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

## 👥 Team

- **Developer**: iKame Elite Fresher 2025
- **Designer**: UI/UX Team
- **Project Lead**: Sprint 2 Team

## 📞 Support

- **Email**: support@healthguru.app
- **Documentation**: [Wiki](https://github.com/PhungMHieu/BaiTapSwiftUISprint2/wiki)
- **Issues**: [GitHub Issues](https://github.com/PhungMHieu/BaiTapSwiftUISprint2/issues)

---

<p align="center">
  <strong>Built with ❤️ using SwiftUI</strong>
</p>

<p align="center">
  <sub>© 2025 HealthGuru. All rights reserved.</sub>
</p>
