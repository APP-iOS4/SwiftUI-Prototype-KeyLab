# KeyLab
## 프로젝트 소개
멋쟁이 사자처럼 앱스쿨:iOS 4기7회차 실습조 LAB1</br>
커스텀 키보드 입문이 어려운 사람 및 커스텀 키보드에 흥미가 있는 사람을 위한 커스텀 키보드 관련 이커머스앱

<br>

## 🕰️ 개발기간
2024.02.19(월) ~ 2024.02.22(목) / 4일
</br>
대략적인 아이디어 및 개발 기술 검토(초안설계) 1일
</br>
프로그래밍을 통한 개발 기간 3일

<br>

## 😀 팀원 소개
| 사진      | 이름   | GitHub      | 한줄평       |
| -------- | ----- | ----------- | ----------- |
| <img src="https://avatars.githubusercontent.com/u/151798123?v=4" alt="drawing" width="100"/> | 강태훈 | [@Taehooony](https://github.com/Taehooony) | 많이 배울 수 있어서 좋았습니다 |
| <img src="https://avatars.githubusercontent.com/u/53979393?v=4" alt="drawing" width="100"/> | 김예지 | [@nxtlevYeah](https://github.com/nxtlevYeah) | alert 함부러 쓰지않기 ❌ |
| <img src="https://avatars.githubusercontent.com/u/100953349?v=4" alt="drawing" width="100"/> | 심상원 | [@Upcircle2](https://github.com/Upcircle2) | 서비스를 기획함에 있어 사용자의 플로우가 곧 가이드역할을 함으로서</br>편의성을 증진시킨다는점을 다시금 배웠다. |
| <img src="https://avatars.githubusercontent.com/u/49361214?v=4" alt="drawing" width="100"/> | 유지호 | [@jihoooo97](https://github.com/jihoooo97) | 프로젝트를 기획 및 개발함에 있어 개발 스킬뿐만 아니라</br>기획 및 소프트스킬이 중요하다는 것을 많이 깨달았다. |
| <img src="https://avatars.githubusercontent.com/u/76551806?v=4" alt="drawing" width="100"/> | 정재웅 | [@jjw8959](https://github.com/jjw8959) | 기획을 처음부터 마지막까지 확실하게 만들지 않으면</br>실제 제작했을때 빈틈이 많이 보인다는걸 다시금 깨달았다. |

<br>

## 📄 사용자 시나리오
- 릴스를 통해 커스텀 키보드에 입문을 하려했지만, 너무나도 많은 부품의 종류에 조립에 어려움을 느끼는 사람이 이 앱을 우연히 접하게 된다.
- 커스텀 키보드를 기존에 알고있으나 여러가지 부품을 한 플랫폼에서 간편하게 주문하기 위해 웹서핑 중, 이 앱을 접하게 된다.

<br>

## 🥪 ADS
- 커스텀 키보드의 조합을 간편하게 하여 구매할 수 있는 앱.
- 단순히 조합을 통한 구매외에도 부품별로 구매가 가능하다.
- 키보드 조립과 부품 구매에 있어 이 앱하나로 끝낼 수 있다.

<br>

## 👨‍👩‍👧‍👦 페르소나 요약
주된 사용자는 커스텀 키보드에 관심이 있는 고객.
 - 커스텀 키보드에 대해 공부해야 구매할수 있어 진입장벽을 느꼈던 사람.
 - 커스텀 키보드를 간편히 조합하고, 추가 부품도 구매하려는 사람.

<br>

## 🥅 구현 목표
- 커스텀 키보드를 쉽게 조립할 수 있는 플랫폼 개발.
- Xcode로 SwiftUI 기반의 프로토타입 프로젝트 생성.

<br>

## ⚙️ 앱 개발 및 배포 환경
- Xcode 15.2
- iOS 17.0
- iPhone 15 Pro에 최적화 되어있음.
- 라이트 모드에 최적화 되어있음.

<br>

## 🚙 앱 실행 방법
 1. main 브랜치에서 Git 프로젝트 Clone.
 2. 프로젝트 폴더의 KeyLab.xcodeproj 실행.
 3. 실행 기기를 iPhone 15 Pro 으로 변경.
 4. Xcode상에서 Run.
 5. 이후 세로모드로 진행.

<br>

## 📲 단계별 사용자 시나리오
### 조립 시나리오
 1. 온보딩 페이지에서 우로 스크롤 / 로그인 버튼 선택
 2. 로그인 페이지에서 아이디, 비밀번호 입력 후 로그인 버튼 선택 / 아이디 없을 경우 회원가입 (현재 로그인 로직 없으므로 로그인 버튼 선택)
 3. 메인 화면에서 조립 버튼 선택
 4. 각 단계별로 부품 선택후 하단의 다음 페이지 버튼 선택
    4-1. 부품에 대한 추가 정보 원할 경우 Long Press -> Context Menu에서 상세보기 선택
 6. 마지막에 카트 버튼을 선택 후 Add Cart버튼 누르면 장바구니 추가
 7. 홈 및 부품 페이지의 상단 장바구니로 이동 후 구매하기 상세페이지(미구현)
 8. 결제 완료(미구현)


### 부품 개별 구매 시나리오
 1. 온보딩 페이지에서 우로 스크롤 / 로그인 버튼 선택
 2. 로그인 페이지에서 아이디, 비밀번호 입력 후 로그인 버튼 선택 / 아이디 없을 경우 회원가입 (현재 로그인 로직 없으므로 로그인 버튼 선택)
 3. 메인 화면에서 부품 버튼 선택
 4. 부품 선택후 상세페이지 진입하여 장바구니 버튼 선택
 5. 상단 장바구니로 이동 후 구매하기 상세페이지(미구현)
 6. 결제 완료(미구현)

<br>

## 📱 실행화면
| 온보딩 | 로그인 | 
| ---- | ---- | 
| ![온보딩](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/b827a87e-5e89-46f8-974e-8da50df5fbb9) | ![로그인](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/485a1ab0-060a-44d7-8380-110c34e2b7cf) 

| 홈 |
| --- |
| ![홈](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/c3af9031-db5a-41fe-aaa8-8182c8b6031f) |

| 조립탭 | 부품탭 | 제품 상세 페이지 | 
| --- | --- | --- |
| ![조립](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/374d5f5c-4d8e-4a47-9f45-36debd44a59b) | ![부품](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/9b01128a-e5ed-4d73-9561-0d16f6c068c6) | ![제품상세페이지](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/6d1617f0-f32d-4a29-97c6-b2ae0c602f26) |

| 리뷰탭 | 리뷰 상세 페이지 |
|:---:|:---:|
| ![리뷰](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/972f2bad-ac62-49a8-8e1a-e21fcb9d8498) | ![후기상세페이지](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/b816bfef-0b85-4c7f-86f6-38af0a32a035) | 

| 마이페이지 | 
| ------- |
| ![마이페이지](https://github.com/APP-iOS4/SwiftUI-Prototype-KeyLab/assets/76551806/eba169a7-1740-41ed-9cf5-11dda502987f) |

<br>

## 🖥️ 미구현 목표
구매하기 상세 페이지</br>
결제 완료 상세페이지</br>
조립뷰 부품버튼의 찜하기 버튼</br>
두번째 실행(or 자동 로그인 사용)부터는 온보딩 접근 안하게 해야함.

<br>

## ⚠️ Notice
- 이미지 문제 시, 삭제하도록 하겠습니다.

<br>

## 📜 License
Copyright 멋쟁이사자처럼 앱스쿨:iOS 4기 7회차 Lab1. All rights reserved.

Licensed under the [MIT](LICENSE) license.
