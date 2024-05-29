## 프로젝트 개요
- 프로젝트 이름 : 잡학 계산기 (miscellaneous_calculator)
- 프로젝트 기간 : 24.04.01 ~ 24.04.07 (1주일)
- 플랫폼 : Android
- 출시 : Google play store 출시 완료(24.05.05)
- 주요 아키텍처 : MVVM 패턴
- 상태 관리 : Provider
  
<br><br>
## 프로젝트 기획 의도
- 구글 플레이 스토어에 직접 배포하는 경험을 쌓기 위해서 제작한 간단한 계산기 어플리케이션입니다.
- 현재는, 실생활에서 유용하게 쓸 수 있는 계산기인 '실생활편' <비만도 계산기>, <면적 계산기> 등이 있으며,<br> <환율계산기> <졸업 연도계산기>등을 추가하여 지속적인 업데이트를 할 예정입니다.
  
<br><br>
## 프로젝트 화면
|기본 화면|기능|Validation 체크|
|:-|:-|:-|
|![start](https://github.com/JEON-Sungsu/miscellaneous_calculator/assets/63297236/d5d86d6a-0d81-481d-8709-244f78141451)|![calc_main](https://github.com/JEON-Sungsu/miscellaneous_calculator/assets/63297236/1efe53fb-3afd-4a48-bf92-78e9f95d5d7c)|![error](https://github.com/JEON-Sungsu/miscellaneous_calculator/assets/63297236/39a6925d-527a-4f7a-8649-dd0e5a831a1c)|

<br><br>

## Trouble Shooting
- 문제 상황
    - 비공개 테스트로 출시를 진행해야되는데, 처음에 내부 테스트에 aab 파일을 올렸다가 다시 비공개테스트에 aab 파일을 올리려고 하니까 버전코드가 이미 사용되었다 라고 하면서 등록이 안됨
    - 등록된 버전코드의 aab 파일을 삭제해도, 재등록이 안되는 상황 발생.
    - 이럴 경우 버전을 변경해서 다시 앱을 패키징하여 등록해줘야된다.
- 해결
    - pubspec.yaml 파일로 가서 version 을 변경해주고, 패키징을 진행하여 새로운 aab 파일을 등록해주면 된다.

<br><br>

## 프로젝트 회고
- 처음으로 Flutter를 통해 어플리케이션을 만들고, 구글 플레이스토어에 배포까지 해보는 경험을 쌓을 수 있었습니다.<br>
배포를 위해 필요한 사전준비들, App Icon 제작, 개인정보 처리 방침 추가, 출시 전 테스터 모집등 개발자로써 필요한<br>
소양을 갖추는데 큰 도움이 된 프로젝트였습니다. 아직 코드품질이나, UI/UX 적으로 개선할 여지가 많지만, Refactoring을 통해<br>
차근차근 개선해 나갈 생각입니다.
