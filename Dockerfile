# 베이스 이미지 지정
FROM node:21-alpine

# 애플리케이션 소스코드를 보관할 디렉토리 생성
RUN mkdir -p /usr/src/app
# 명령어가 실행될 디렉토리 지정
WORKDIR /usr/src/app
# 현재 경로에 있는 모든 파일을 컨테이너의 특정 경로로 복사
ADD . /usr/src/app
# 애플리케이션 구동에 필요한 라이브러리 설치
RUN npm install

# 애플리케이션이 노출하는 포트 정보 
EXPOSE 3000

# 컨테이너를 구동할때 실행할 명령어
CMD ["node", "app.js"]