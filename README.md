# GOOSE(구해줘요 스터디)

>비대면 화상 스터디 코딩 특화 플랫폼 
![Goose-1-2](https://user-images.githubusercontent.com/86655589/184588991-bb65717d-ff72-40fc-8e3a-c8eb15819df4.png)
>
>
>메인화면
![메인홈](https://user-images.githubusercontent.com/86655589/184629331-e87e00d5-887a-4e07-8706-4d1d7eebeeb5.png)

## 목차

[1. 프로젝트 개요](#프로젝트-개요)

[2. 프로젝트 소개](#프로젝트-소개)

[3. 주요 기능](#주요-기능)

[4. 아키텍처](#아키텍처)

[5.개발환경](#개발환경)

[6.배포환경](#배포환경)

[7.팀원](#팀원)

## 프로젝트 개요

- **진행 기간** : **2022.07.11 ~ 2022.08.15(6주)**

- **목표**
  - webRTC 기술을 사용해 비대면 화상 스터디 플랫폼 제작
  - 스터디 모집과 스터디 활동을 지원하는 스터디 플랫폼 목표
  - 서비스를 이용하는 사람들로 하여금 편리함과 유용함을 주는 서비스를 목표
  - 모두가 편집에 관여할 수 있는 공유 판서 기능과 컴파일러 기능 목표

- 회의록 (https://troubled-juice-9fa.notion.site/e37b292ec96245ae9100e847f122f8f0)
- 와이어 프레임
  ![와이어 프레임](https://user-images.githubusercontent.com/86655589/184591676-be098f63-7a07-45b8-9504-15e97387f857.png)

- ERD
  ![erd](https://user-images.githubusercontent.com/86655589/184592347-b8b6a17a-62b9-4272-a5e8-e2c31e3e8365.png)



## 프로젝트 소개

### 기획배경

- 높아진 IT에대한 관심
- 전염병의 심화로 카페 등 공공 이용시설이 걱정되는 환경
- 코딩에 특화된 화상채팅 환경에 대한 갈망



## 주요 기능



### 비공개 스터디
> 선별된 사람들로만 구성된 스터디
- 다중 공유
![다중공유](https://user-images.githubusercontent.com/86655589/184599253-53cc9fe8-e0fa-44aa-b0ec-9ea65eb2af98.gif)

- 공유 판서
![공유판서2](https://user-images.githubusercontent.com/86655589/184804050-9d157aeb-6e8f-4af8-a140-927a6b2f9819.gif)

- 컴파일러
![컴파일러2](https://user-images.githubusercontent.com/86655589/184805481-5aa2c663-4c12-4871-acfd-704e0b2dae4e.gif)

- 스톱워치
![타이머](https://user-images.githubusercontent.com/86655589/184599763-33ef3ac7-511f-40b3-a8eb-f179001d7755.gif)

- 캘린더
![캘린더](https://user-images.githubusercontent.com/86655589/185011528-404a6269-321a-4b65-b5f9-7fa92d6e6401.gif)



### 공개 스터디
> 공개된 스터디, 비공개 스터디를 위한 만남의 장으로 활용가능
- 마이크, 카메라 & 채팅
![채팅마이크](https://user-images.githubusercontent.com/86655589/184601420-d76bbf40-e8ac-4598-87af-4fb07c8afe03.gif)

- 강퇴
![강퇴](https://user-images.githubusercontent.com/86655589/184600601-61132c9f-a554-4740-882c-a90c7ee5af81.gif)



## 아키텍처
- 아키텍처
![1111](https://user-images.githubusercontent.com/86655589/184800962-77e8e8d0-553e-4289-b9a4-1b857b7b0b08.jpg)



## 개발환경
- OS: Windows10
- Backend Framework: Spring Boot 2.4.5
- Frontend Framework: Vue 3
- DB: mysql Ver 5.7.25
- WAS: Gradle
- JVM: openJDK (1.8.0_192)
- Node.js: 14.17.0
- WebRTC: openVidu 2.20.0

## 배포환경
- [exec](./exec) 참조

## 팀원

- [소정현]([gus7057@gmail.com · GitHub](https://github.com/sjhyun7057)) 팀장 Frontend
- [양승호]([mayakpari · GitHub](https://github.com/mayakpari)) Backend
- [이승진]([lapera00 · GitHub](https://github.com/lapera00)) Backend
- [이재민]([ljm0850 · GitHub](https://github.com/ljm0850)) Frontend
- [정관철]([MokokoDev · GitHub](https://github.com/MokokoDev)) Backend
- [최용욱]([qwe0274@naver.com  · GitHub](https://github.com/Ingyeon)) Frontend


#### 시연영상
- https://user-images.githubusercontent.com/86655589/184637703-0510878d-f4f0-4967-a2dd-3761be01a448.mp4



### 개인적인 회고

**용욱**

vue2와 다른 vue3 구조에 적응하느라 프로젝트 시작 후 2주 동안은 작업속도가 더딤을 느꼈고 vue3에서 지원을 안하는 외부 라이브러리들이 많아 힘들었습니다.

하지만 어느 정도 적응을 하고 나니 vue3의 Composition API가 vue2 Option API 방식보다 훨씬 직관적이고 가독성도 좋아 익숙해지고 나서는 오히려 vue2가 어색했습니다.

같은 팀원분들에게도 도움을 많이 받았는데, 동기와 비동기 구조와 관련해 vue3에서 비동기 처리를 하는 과정을 어떻게 해야 하는지 많이 헷갈렸고 시행착오도 많았는데 팀원인 재민님이 computed로 처리하는 방식을 알려주셔서 큰 도움이 되었습니다.

또한 팀장이신 정현님은 CSS디자인을 독보적으로 잘하셔서 CSS에 약한 저에게 큰 공부가 되었고 솔선수범하시는 모습에 같이 고양되어 열심히 할 수 있었습니다.

백엔드 개발을 담당하신 분들도 모두 뛰어난 실력을 가지고 계셔서 프로젝트 간 걱정없이 프론트 엔드 업무에 온전히 집중할 수 있었습니다.

**승진**

- 명세서를 자세히 작성 안해서 구현 중 많은 혼선이 있었다.

**정현**

- vue부터 수업을 제대로 안듣다 보니 프론트엔드 구현에 있어서 많은 어려움을 겪었다.
- 팀원들과 같이 하나하나 vue3를 새로 배우다보니 어느정도 감을 잡을 수 있었다.
- 모르는 부분이나 막히는 부분을 재민님과 용욱님이 같이 도와주셔서 쉽게 해결할 수 있었다.
- 디자인을 적용하지 않은 상태에서 나중에 적용하려니 많은 혼선이 있었어서 후에는 디자인을 먼저하고 기능을 넣는 방식으로 프로젝트를 진행하는 것이 좋을 것 같다 느꼇다.
- 처음에는 다들 어렵기도 하고 배우지 않은 언어를 사용하느라 힘들었지만 다들 열심히하고 잘 해주어서 감사하다고 느꼈다.

**재민**

- 비동기 함수에 대한 이해가 부족했다
- 디자인을 정해두지 않고 하다 보니 혼선이 있었다.
- 명세서를 자세히 작성하지 않아 어떤식으로 이해하고 구현한 것인지 물어볼 일이 많았다.
- Jira를 어떻게 사용해야 좋을지에 대해서 알 수 있었다
