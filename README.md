# Qutrix Automation 

## 🚀  Robot Framework Automation

### 🔹 Task 1: Capture IP Address
- Used Robot Framework with Process library
- Executed system command (`ipconfig`)
- Extracted and printed only the IPv4 address

---

### 🔹 Task 2: Web Automation using Selenium

Automated the following steps:

1. Opened https://qutrix.io
2. Hovered over **Company** menu
3. Clicked on **Explore Career**
4. Scrolled down the page
5. Clicked on **"Click Here"** for Self-Assessment
6. Switched to new tab
7. Captured screenshot of the opened page

---

## 🛠️ Tools & Technologies Used

- Python
- Robot Framework
- SeleniumLibrary
- ChromeDriver

---


## ▶️ How to Run

```bash
robot tests/ip_test.robot
robot tests/qutrix_test.robot  

📸 Output
Extracted IP address printed in console
Screenshot saved in screenshots/ folder  


💡 Notes
Dynamic elements were handled using hover actions and explicit waits
XPath strategies were refined based on DOM inspection
Screenshot filenames use timestamps to avoid overwriting
