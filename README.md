# ShipDa_JSP Project
# 프로젝트 간략 소개
* 물류 포워딩 업체 견적의뢰서를 온라인 플랫폼에 올림으로서 쉽고 빠르게 실시간으로 견적진행 확인 밑 견적을 받을 수 있도록 하는 온라인 중계 물류 견적사이트.
* 빠른 개발을 위해 디자인이 되어있는 템플릿을 활용함

# 기능 소개
* 수입,수출 물류 견적요청서 작성 및 리스트로 나타날 수 있도록 게시판 기능 구현 
* 포워딩, 관세 업체가 실제 견적에 참여하여 실시간 견적 process 를 알수있도록 기능 구현
* 회원들끼리 실시간 채팅이 가능하도록 기능 구현 및 친구찾기 기능 구현
* 견적에 참여가 가능하도록 유료서비스 플랫폼 구축 -> 회원제로 운영되며 KG이니시스 결제 api를 활용하여 결제 기능 구현

# 부족한 및 아쉬운점, 느낀점
* 아쉬운점 1 : 2주간 디비연동연습을 위해서 혼자서 시작해본 개인 프로젝트라 몇군데가 완성되지 않은 부분을 미처 알지 못했다. 
(게시글 정렬 및 검색구현, 개인이 작성한 견적글을 마이페이지에서 확인을 하는 부분)
* 아쉬운점 2 : 원래 의도는 의뢰인 & 포워딩 업체간 실시간 채팅을 구현하고자 하였으나, 채팅기능을 완성하고야 하서 의뢰인들끼리만 채팅이 가능하도록 기능을 구현한 점.
* 아쉬운점 3 : JSTL를 활용했다면 코드가 훨씬 더 짧고 간결했을텐데 적용하지 못한 점. 
* 부족한 점 1 : DB설계를 아직까지 잘 못하는 점.
* 부족한 점 2 : 원래는 1 CBM 당 현재 달러 환율을 적용하여 원화로 화면에 나타나도록 자동 계산 프로세싱을 구현하고 싶었다. 이를 위해 환율 api/ 네이버환율 크롤링을 활용하여
  가져오는 것 까진 하였으나, 능력부족으로 적용후 화면에 뿌리는 것 까지는 기능을 구현하지 못하였다. 
* 느낀점 : 팀플에서 하는것과는 또 다른 느낌이었다. 혼자서 설계부터 기능구현까지 힘들기도 했고 편한점도 많았지만, 깃허브를 실용적으로 사용해보지 못해서 아쉬웠다. 

# 해결하지 못한 점
* UTF-8, EUC-KR 로 인코딩해도 한글이 깨지는 현상을 해결하지 못함.


# 레파지토리
![repository_screen](https://user-images.githubusercontent.com/73155839/109601583-7a12dc80-7b62-11eb-8fed-f848718b07d7.png)

# 기능구현
<p align="center">
<img src="https://user-images.githubusercontent.com/73155839/109601656-9f074f80-7b62-11eb-80b0-5ac079f2f2c2.png">
<img src="https://user-images.githubusercontent.com/73155839/109601660-a0387c80-7b62-11eb-8838-495180614078.png">
<img src="https://user-images.githubusercontent.com/73155839/109601661-a0d11300-7b62-11eb-86fd-c9ea98d0430f.png">
<img src="https://user-images.githubusercontent.com/73155839/109601666-a2024000-7b62-11eb-8fab-38d2b1791f8f.png">
<img src="https://user-images.githubusercontent.com/73155839/109601669-a4649a00-7b62-11eb-97a1-0237356c7bf0.png">
<img src="https://user-images.githubusercontent.com/73155839/109601670-a4fd3080-7b62-11eb-9ff4-8955a7d8c0a7.png">
<img src="https://user-images.githubusercontent.com/73155839/109601672-a595c700-7b62-11eb-829f-a4494b8a4c7c.png">
<img src="https://user-images.githubusercontent.com/73155839/109601676-a62e5d80-7b62-11eb-988f-fd7bbfad44de.png">
<img src="https://user-images.githubusercontent.com/73155839/109601679-a6c6f400-7b62-11eb-9cfe-e09176e47d00.png">
<img src="https://user-images.githubusercontent.com/73155839/109601682-a75f8a80-7b62-11eb-83a8-3c05f8573f15.png">
<img src="https://user-images.githubusercontent.com/73155839/109601684-a7f82100-7b62-11eb-8b8c-a2d4c6942fa2.png">
<img src="https://user-images.githubusercontent.com/73155839/109601694-aaf31180-7b62-11eb-82db-5f1c42d80d3c.png">
<img src="https://user-images.githubusercontent.com/73155839/109601701-acbcd500-7b62-11eb-9642-346db9bc6663.png">
<img src="https://user-images.githubusercontent.com/73155839/109601702-ad556b80-7b62-11eb-9b59-098b654c2dad.png">
<img src="https://user-images.githubusercontent.com/73155839/109601704-adee0200-7b62-11eb-8ab0-eae7c71dd8b7.png">
<img src="https://user-images.githubusercontent.com/73155839/109601705-ae869880-7b62-11eb-935e-6355aa96a9cf.png">
</p>
