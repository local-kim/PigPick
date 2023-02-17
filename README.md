# PigPick
<p align="center"><img width="200" alt="logo" src="https://user-images.githubusercontent.com/74584001/213995960-27c60097-d2c8-416a-99fd-df847c153d7c.gif"></p>

> 사용자의 취향을 고려하여 메뉴를 추천해주는 웹사이트

### Features
* 원하는 카테고리를 선택하면 랜덤으로 메뉴 추천
* 사용자 위치 기반으로 반경 1km 이내의 식당 리스트 출력하기
* 식당에 관한 리뷰 작성 및 리뷰 확인하기
* 식당 찜하기
* 사용자가 가장 많이 먹은 메뉴, 작성한 리뷰, 찜한 식당 확인하기

### Skills & Tools
<a href="" target="_blank"><img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=for-the-badge&logo=Spring Boot&logoColor=white"/></a>
<a href="" target="_blank"><img src="https://img.shields.io/badge/MyBatis-555555?style=for-the-badge&logo=MyBatis&logoColor=white"/></a>
<a href="" target="_blank"><img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=JAVA&logoColor=white"/></a>
<a href="" target="_blank"><img src="https://img.shields.io/badge/Maven-c71A36.svg?&style=for-the-badge&logo=ApacheMaven&logoColor=white"/></a>

<a href="" target="_blank"><img src="https://img.shields.io/badge/JSP-444444?style=for-the-badge&logo=JAVA&logoColor=white"/></a>
![jQuery](https://img.shields.io/badge/jQuery-0769AD.svg?&style=for-the-badge&logo=jQuery&logoColor=white)
<a href="" target="_blank"><img src="https://img.shields.io/badge/AJAX-48A1D9?style=for-the-badge&logo=JAVA&logoColor=white"/></a>
![HTML5](https://img.shields.io/badge/HTML5-E34F26.svg?&style=for-the-badge&logo=HTML5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6.svg?&style=for-the-badge&logo=CSS3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E.svg?&style=for-the-badge&logo=JavaScript&logoColor=white)

![AmazonAWS](https://img.shields.io/badge/Amazon%20RDS-527FFF.svg?&style=for-the-badge&logo=AmazonAWS&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1.svg?&style=for-the-badge&logo=MySQL&logoColor=white)

### API
* 카카오 지도 API
* 카카오 로그인 API

### Database
<p align="center"><img width="600px" alt="" src="https://user-images.githubusercontent.com/63040140/219563570-16b69c17-cda2-423c-888a-bb0d5af4ccf2.png"></p>

### Contributors
* 김현지 (Back-end, 팀장) : 백엔드 및 데이터베이스 설계/관리
* 단시연 (Front-end , 아이디어 기획) : 전체적인 퍼블리싱 및 프론트엔드
* 김서윤 (Front-end) : 전체적 웹 디자인 및 퍼블리싱

## DEMO
### 랜덤 메뉴 추천
<p align="center"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/213997316-161714a0-c289-421c-a781-9fe9a9a2787f.gif"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/213997810-2aa41a2f-9c68-4a24-99ec-f78d108462b1.gif"></p>

* 메뉴 추천 페이지에서 사용자가 원하는 카테고리 선택 ( ex. 일식 / 밥 / 맵기 x )
* 추천 받기 클릭 시 선택한 카테고리 기반으로 DB에서 메뉴 랜덤 추천
* 다른 메뉴를 추천받고 싶으면 '다시 찾기' 클릭하여 선택한 카테고리 내의 다른 메뉴 추천
* 추천 받은 메뉴로 '식당 찾기' 클릭 시 해당 메뉴를 판매하는 식당을 Kakao Map API를 사용하여 지도 위에 출력
* 내 위치를 기반으로 반경 1km 내에 있는 식당만 검색
* 내 위치에서 가장 가까운 식당부터 마커에 오름차순 번호로 표시
* '식당 찾기'를 한 메뉴는 내가 먹은 메뉴로 카운트됨


### 회원가입 & 로그인
<p align="center"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/213998616-62399c3d-a346-4ed5-aa39-8edfe224965a.gif"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/213998639-9a52fc20-283b-4373-be50-846186a4a52c.gif"></p>

* 로그인 페이지에서 카카오 로그인 클릭
* 카카오 로그인 API에서 토큰 및 카카오에 가입된 사용자 정보 받아옴
* 카카오 계정으로 로그인 완료 시 사용자 정보 DB에 입력 및 카카오 계정으로 로그인


### 리뷰 목록
<p align="center"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/214000198-ee131c2c-324d-47cf-a7ff-5050a13e3ace.gif"><img width="50%" alt="" src="https://user-images.githubusercontent.com/74584001/214000277-a4963f44-ac28-4b51-be3a-0469e9205515.gif"></p>

* 식당에 대한 리뷰 목록 및 리뷰 목록 페이지네이션
* 리뷰 내용 클릭 시 리뷰 상세보기로 이동


### 리뷰 작성 & 리뷰 수정 & 리뷰 삭제
<p align="center"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214000660-0bf26205-e6b1-4f88-b8d6-5bfd8313783b.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214000692-a1ce7370-a6af-4bfb-968c-f126389c9610.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214000712-56771bfc-9830-4527-a575-5e6093f9da89.gif"></p>

* 글쓰기 클릭 시 리뷰 작성 페이지로 이동 (로그인 상태에서만 가능)
* 식당 검색해서 나온 리스트에서 원하는 식당 선택 후 별점, 리뷰 작성
* 사용자가 작성한 리뷰에서만 Edit 버튼 활성화 : 클릭시 수정 페이지로 이동
* 사용자가 작성한 리뷰에서만 Delete 버튼 활성화 : 클릭시 리뷰 삭제


### 식당 상세보기 & 좋아요
<p align="center"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214004797-ae72a5bc-e6de-4fb0-84c4-991e8967dfb6.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214021640-0a4de840-fdac-4052-89c8-80d9352588d3.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214004954-56650e7a-e565-4a71-8e67-34110e03e9e5.gif"></p>

* 리뷰 페이지에서 식당 이름 클릭 시 식당 상세정보 페이지로 이동
* 식당 위치, 상세정보, 작성된 모든 리뷰 확인
* 식당 찜하기

### 마이페이지
<p align="center"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214005441-62ab40d6-de27-442a-b56d-5f19ebb818b1.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214005474-9b23032e-e206-4dfb-b5f3-eb58ad5aa67f.gif"><img width="32%" alt="" src="https://user-images.githubusercontent.com/74584001/214005486-54bdde42-0e8e-4643-8d63-82038bd0eeb2.gif"></p>

* 사용자가 추천 받아 자주 먹은 메뉴 확인
* 로그인한 상태에서 추천 받아 식당찾기를 한 메뉴만 카운트
* 사용자가 작성한 총 리뷰 확인 (별점순, 최신순 정렬)
* 사용자가 찜한 식당 리스트 확인
