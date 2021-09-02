# Springboot



### 1. 프로젝트 생성



1. 프로젝트 기본설정

- spring initializr
  - https://start.spring.io/

- Dependencies
  - Spring Web 
  - Spring Data JPA 
  - Thymeleaf (선택)
  - Lombok (선택)

설정 후 GENERATE 하면 압축파일 생성



2. Import  project

- Existing Gradle Project -> generate 한 파일 불러오기



3. setting 확인

- src/main/java 폴더에서 Application.java 파일 실행

- src/test/java 폴더에서 ApllicationTests.java 파일 실행

  localhost:8080 접속 했을 때 다음과 같이 나오면 세팅완료

  ```markdown
  Whitelabel Error Page
  This application has no explicit mapping for /error, so you are seeing this as a fallback.
  
  Thu Sep 02 15:17:40 KST 2021
  There was an unexpected error (type=Not Found, status=404).
  ```

  

4. Eclipse Lombok Setting (단순 반복작업을 덜어주는 라이브러리)

- spring initailizr에서 lombok을 받았기 때문에 Project and External Dependencies에 lombok.jar 파일이 있다.
- lombok.jar파일이 다운되어있는 경로 확인 후 찾아가서 파일 실행
- 내가 사용하는 IDE 설정하고 install / update 클릭하면 완료된다.