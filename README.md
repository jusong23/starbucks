## ☕️ Life Cycle 이용하여 스타벅스 앱 만들기 

### ✏️ New Knowledge

1. 타겟 설정하기 
    * 하나의 최종 상품, Build Setting 을 가장 많이 건드린다.
2. 🔥Container View
3. Priority
    * Content Hugging priority : 순위 낮으면 사이즈 늘어남
    * Content Compression Resistance priority : 순위 낮으면 사이즈 줄어듦
    -> 둘 중 하나는 고정시켜야 하는 상황에서 사용. 순위 높으면 유지한다!
4. 🔥Sticky Header 
5. 데이터 전달
    * Delegate, Notification Center(구독기능)
6. 🔥enum을 활용한 분기처리
    * ex) 로그인 , 로그아웃 화면을 구분
7. Firebase Cloud Message - 푸시알림
8. Database
    * CoreData / SQLite - Local DB 
9. Stepper 
10. ChangeRootViewController
    * 첫번째 VC로 이동하는 법
11. UserDeafults 
    * 최초접속 & 환경설정시에 활용되는 영구저장소
12. Life Cycle Flow [App, Scene Delegate]
    * <img width="400" alt="스크린샷 2022-07-16 11 53 05" src="https://user-images.githubusercontent.com/74387813/185022002-1223393b-a72a-40ad-940a-dd46ef418ea9.png">
13. Will (@@하기 직전), Did (@@하고 난 직 후)
    * Life Cycle에서 적용

---

### 📱 Final Result

https://user-images.githubusercontent.com/74387813/185023326-47b8c14a-66b9-484a-a5c4-ec2637fa1e50.mp4

---

### 🧠 Gotten & Used Component

1. App Life Cycle, Logo, Swithcer Mode, App Terimnate
    * didFinishLaunchingWithOptions
2. ScrollView Delegate
3. Horrizental & Veritcal ScrollView, Prefer Large Title
4. Struct in Array for Table View 
5. @IBDesignable 
6. Data Pass and Screen Transition with Delegate Pattern, Alert, ViewWillDidLoad, UserDefaults

---

### 🗣 Grammar 

- 옵셔널에 대한 개념강의
    - 야곰 : [https://youtu.be/RxScvfe1dyU](https://youtu.be/RxScvfe1dyU)
    - 스탠포드 : [https://youtu.be/JraZFNSecv4](https://youtu.be/JraZFNSecv4)  ⭐
- 서브 스크립트 : [https://jusung.gitbook.io/the-swift-language-guide/language-guide/12-subscripts](https://jusung.gitbook.io/the-swift-language-guide/language-guide/12-subscripts)
- 초기화 : [https://jusung.gitbook.io/the-swift-language-guide/language-guide/14-initialization](https://jusung.gitbook.io/the-swift-language-guide/language-guide/14-initialization)
- 타입 캐스팅 : [https://jusung.gitbook.io/the-swift-language-guide/language-guide/18-type-casting](https://jusung.gitbook.io/the-swift-language-guide/language-guide/18-type-casting)
- Apple 공식문서 MVC ⭐⭐⭐: [https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)

---

### 🧑‍💻 Ref. link

- [iOS] UIScrollView (스크롤뷰) 구현하기 : [https://formestory.tistory.com/20]
- [iOS] 스크롤뷰의 델리게이트 메서드 모음 : [https://boidevelop.tistory.com/101]
- 생명주기에 대한 좋은 글 : [https://sihyungyou.github.io/iOS-lifecycle/](https://sihyungyou.github.io/iOS-lifecycle/) ⭐
- 생명주기에 대한 좋은 글  2 : [https://lena-chamna.netlify.app/post/appdelegate_and_scenedelegate/](https://lena-chamna.netlify.app/post/appdelegate_and_scenedelegate/)
- IBOutlet, IBAction 에 대한 개념 : [https://etst.tistory.com/74](https://etst.tistory.com/74)
- 컨트롤러 간 데이터 전달 방법 ⭐⭐⭐
    - 한글) [https://i-colours-u.tistory.com/6](https://i-colours-u.tistory.com/6)
    - 영어 - 원문) [https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/](https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/)
- 시니어 개발자가 만약 초급 개발자로 돌아간다면? : [https://youtu.be/vj5vHkz0jh4](https://youtu.be/vj5vHkz0jh4) ⭐
