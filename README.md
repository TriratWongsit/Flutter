# Flutter# Flutter Navigation & Material Widgets Showcase

**รายวิชา:** Mobile Application and Development
**จัดทำโดย:** [ชื่อ-นามสกุล] [รหัสนักศึกษา]

## รายละเอียดโปรเจกต์ (Project Description)
แอปพลิเคชันนี้พัฒนาขึ้นเพื่อศึกษาการจัดการ **Navigation and Routing** ใน Flutter Framework และรวบรวมตัวอย่างการใช้งาน **Material Component Widgets** แยกตามหมวดหมู่ โดยมีการแสดงผล 2 ส่วนคือ ส่วนติดต่อผู้ใช้ (UI Preview) และ ส่วนโค้ดตัวอย่าง (Source Code)

## โครงสร้างและการทำงาน (App Structure)

### 1. การจัดการ Navigation (Navigation & Routing)
แอปพลิเคชันใช้การจัดการเส้นทางแบบ **Named Routes** ภายใน `MaterialApp` เพื่อความสะดวกในการเรียกใช้งานและจัดการโค้ด
- **Using the Navigator:** มีการใช้ `Navigator.pushNamed(context, '/routeName')` เพื่อเปลี่ยนหน้าจอจากเมนูหลักไปยังหน้าย่อย
- **Routes Configuration:** กำหนดเส้นทางไว้ที่ `main.dart` ดังนี้:
  - `/`: หน้าหลัก (Menu)
  - `/actions`: หน้าแสดงปุ่มและการกระทำ
  - `/communication`: หน้าแสดงการแจ้งเตือน
  - ... (และเส้นทางอื่นๆ จนครบ 6 หัวข้อ)

### 2. รูปแบบการแสดงผล (Code Layout)
ใช้ `DefaultTabController` และ `TabBar` ในการแยกการแสดงผลเป็น 2 แท็บ:
- **Tab 1 (UI Preview):** แสดง Widget ที่ทำงานได้จริง ให้ผู้ใช้ทดลองกดหรือกรอกข้อมูล
- **Tab 2 (Source Code):** แสดงโค้ด Dart ที่ใช้สร้าง Widget นั้นๆ เพื่อการศึกษา

## เนื้อหาภายในแอป (App Content)
1. **Actions:** แสดงตัวอย่าง FloatingActionButton และ Buttons ชนิดต่างๆ
2. **Communication:** แสดงตัวอย่าง SnackBar และ AlertDialog
3. **Containment:** แสดงตัวอย่าง Card และ Divider
4. **Navigation:** แสดงตัวอย่างการใช้ BottomNavigationBar หรือ Drawer
5. **Selection:** แสดงตัวอย่าง Checkbox, Radio, และ Switch
6. **Text Inputs:** แสดงตัวอย่าง TextField และการรับค่า input

---
*Created as part of Lab 2 assignment.*