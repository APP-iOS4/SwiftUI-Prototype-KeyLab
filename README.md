# KeyLab
## 프로젝트 소개
멋쟁이 사자처럼 앱스쿨:iOS 4기7회차 실습조 LAB1

커스텀 키보드 입문이 어려운 사람 및 커스텀 키보드에 흥미가 있는 사람을 위한 커스텀 키보드 관련 이커머스앱


## 🕰️ 개발기간
2024.02.19(월) ~ 2024.02.22(목) / 4일

대략적인 아이디어 및 개발 기술 검토(초안설계) 1일
</br>
프로그래밍을 통한 개발 기간 3일


## 😀 팀원 소개
| 사진      | 이름   | GitHub      | 
| -------- | ----- | ----------- |
| <img src="https://avatars.githubusercontent.com/u/151798123?v=4" alt="drawing" width="100"/> | 강태훈 | [@Taehooony](https://github.com/Taehooony)   | 
| <img src="https://avatars.githubusercontent.com/u/53979393?v=4" alt="drawing" width="100"/> | 김예지 | [@nxtlevYeah](https://github.com/nxtlevYeah)   | 
| <img src="https://avatars.githubusercontent.com/u/100953349?v=4" alt="drawing" width="100"/> | 심상원 | [@Upcircle2](https://github.com/Upcircle2) | 
| <img src="https://avatars.githubusercontent.com/u/49361214?v=4" alt="drawing" width="100"/> | 유지호 | [@jihoooo97](https://github.com/jihoooo97)   |
| <img src="https://avatars.githubusercontent.com/u/76551806?v=4" alt="drawing" width="100"/> | 정재웅 | [@jjw8959](https://github.com/jjw8959)  |

## 📄 시나리오
- 릴스를 통해 커스텀 키보드에 입문을 하려했지만, 너무나도 많은 부품의 종류에 조립에 어려움을 느끼는 사람이 이 앱을 우연히 접하게 된다.
- 커스텀 키보드를 기존에 알고있으나 여러가지 부품을 한 플랫폼에서 간편하게 주문하기 위해 웹서핑 중, 이 앱을 접하게 된다.

## 🥪 ADS
- 커스텀 키보드의 조합을 간편하게 하여 구매할 수 있는 앱.
- 단순히 조합을 통한 구매외에도 부품별로 구매가 가능하다.
- 키보드 조립과 부품 구매에 있어 이 앱하나로 끝낼 수 있다.

## 👨‍👩‍👧‍👦 페르소나 요약
주된 사용자는 커스텀 키보드에 관심이 있는 고객.
 - 커스텀 키보드에 대해 공부해야 구매할수 있어 진입장벽을 느꼈던 사람.
 - 커스텀 키보드를 간편히 조합하고, 추가 부품도 구매하려는 사람.
  
## 🛠️ 구현 목표
- 커스텀 키보드를 쉽게 조립할 수 있는 플랫폼 개발.
- Xcode로 SwiftUI 기반의 프로토타입 프로젝트 생성.


## ⚙️ 앱 개발 및 배포 환경
- Xcode 15.2
- iOS 17.0
- iPhone 15 Pro에 최적화 되어있음.
- 라이트 모드에 최적화 되어있음.


## 🚙 앱 실행 방법
 1. main 브랜치에서 Git 프로젝트 Clone.
 2. 프로젝트 폴더의 KeyLab.xcodeproj 실행.
 3. 실행 기기를 iPhone 15 Pro 으로 변경.
 4. Xcode상에서 Run.
 5. 이후 세로모드로 진행.


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

## 🖥️ 미구현 목표
구매하기 상세 페이지
결제 완료 상세페이지
부품 페이지 부품버튼 선택취소
찜하기
조립뷰에서도 카트 나올 필요 O

## ⚠️ Notice
- 이미지 문제 시, 삭제하도록 하겠습니다.

## 📜 License
Copyright 멋쟁이사자처럼 앱스쿨:iOS 4기 7회차 Lab1. All rights reserved.

Licensed under the [MIT](LICENSE) license.

<br><br>
