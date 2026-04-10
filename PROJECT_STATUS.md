# PROJECT_STATUS

- Last Updated: 2026-04-10 17:30:56
- Policy: 작업 시작 전 이 파일을 먼저 확인하고, 없으면 생성 후 유지
- Harness Mode: ENABLED
- Deploy Rule: 코드 수정 후 `빌드 -> 푸시 -> 백엔드 배포 -> E2E smoke test -> 설치 -> 실행` 필수
- Status Rule: 코드 변경/기능 추가/수정/삭제 후 반드시 이 파일 갱신 (필수)
- **⚠️ 분리 모드**: 이 폴더는 원본(MyDay20)의 복사본이지만, git remote와 앱 식별자를 MyDay210 기준으로 분리해 원본과 충돌하지 않도록 유지합니다.

## Current Target
- App Label: `MyDay210\n2.15`
- App Id: `com.mooja.myday210`
- Android Package: `com.mooja.myday210`
- Launch Component: `com.mooja.myday210/com.mooja.autopost.MainActivity`
- Current Version: 2.15

## Structure
- `app/` : Android(smali/apktool) project
- `scripts/` : harness/build scripts
- `docs/` : 운영 문서

## Change Log
| 날짜 | 버전 | 변경 내용 |
|------|------|-----------|
| 2026-04-08 | 2.2 | 챗봇 기능 추가 (chatbot.js, chatbot.css, knowledge.md) — Gemini 기반 앱 사용 가이드 도우미 |
| 2026-04-08 | 2.2 | 불필요 파일 정리 (recovery/, app/build/, harness/, app/original/ 삭제) |
| 2026-04-08 | 2.2 | 하네스 스크립트 수정 (chatbot 파일 포함, 버전 감지 regex 수정) |
| 2026-04-09 | 2.3 | 리퍼럴+공유카드 시스템 추가 (referral-share.js, bottom-nav.css) — 하단 고정메뉴 1/3 |
| 2026-04-08 | 2.3 | 하단 고정메뉴 2/3·3/3 완료 (포스팅 기록, 빠른도움) + 공유/복사/성공감지 안정화 |
| 2026-04-08 | 2.4 | 기존 챗봇 아이콘/로딩 제거 후 빠른도움 내 RAG FAQ 챗봇(100 Intent, 500 Q/A)으로 교체 |
| 2026-04-08 | 2.5 | 하네스 배포 완료 (빌드/푸시/설치/실행) |
| 2026-04-09 | 2.6 | 공유·초대 콘텐츠 전면 교체: 직전 블로그 본문(제목~해시태그) 긴 세로 이미지 생성 + 클릭/버튼 이미지 복사 |
| 2026-04-09 | 2.6 | 챗봇 대화체 개선: 시스템 프롬프트 페르소나/말투 규칙 강화, temperature 0.7→0.9, 설명서체→재치있는 대화체 |
| 2026-04-09 | 2.8 | RAG FAQ 챗봇 대화체 전면 개선: RAG_FACTS 22개(앱소개 추가), 답변/앵글 전체 대화체로, fallback·환영메시지 개선, 기존 chatbot.js 대화기능 제거 |
| 2026-04-09 | 2.8 | 서버사이드 RAG 챗봇 구축: chatRagService.ts(벡터 인덱스+코사인유사도+Gemini Flash), /api/chat 엔드포인트, 클라이언트 fallback→서버 RAG 연동 |
| 2026-04-09 | 2.8 | 용어 질문 라우팅 개선: "~이 뭐니/뭐야/이란" 패턴 감지 → 서버 RAG 직행, intro fact 키워드 중복 제거 |
| 2026-04-10 | 2.9 | 릴리스 게이트 강화: backend_deploy_and_smoke.sh 추가, Railway 배포 후 /api/publish-sample 기반 2계정 E2E smoke test 통과 전 adb install/run 차단 |
| 2026-04-10 | 2.9 | 서버 발행기 격리 강화: naverPublisher.ts에서 strict request isolation, 세션 소유 메타데이터, 프레임 포함 타깃 블로그 검증 추가 |
| 2026-04-10 | 2.10 | **원본(MyDay20) 분리 조치**: remote → MyDay210.git 변경, pre-push 훅으로 원본 push 차단, 독립 복사본으로 전환 |
| 2026-04-10 | 2.10 | **앱 식별자 분리 보강**: package/appId/localStorage key/harness 기본 대상 값을 MyDay210 기준으로 변경해 원본 앱과 설치·저장소 충돌 차단 |
| 2026-04-10 | 2.11 | **210 런타임 식별 강화**: 앱 라벨/title을 `MyDay210`로 바꾸고, WebView 상단 식별 배지를 추가해 209/20과 시각적으로 구분 |
| 2026-04-10 | 2.11 | **210 전용 저장/발행 스코프 강화**: referral-share.js를 SecurePrefs 우선 단일 입구로 통합하고, /api/publish payload에 credentialOwner/sessionKey/reset flags를 추가 |
| 2026-04-10 | 2.11 | **210 전용 하네스 가드 강화**: preflight에서 209/20 식별자 혼입을 차단하고, 설치 후 `com.mooja.myday210` 패키지 및 foreground runtime 검증을 강제 |
| 2026-04-10 | 2.11 | **210 smoke payload 보강**: backend_publish_smoke.sh가 MyDay210 credentialOwner/sessionKey/runtime metadata를 함께 보내도록 수정 |
| 2026-04-10 | 2.12 | **비동기 발행 전환**: 메인 포스팅과 재발행이 /api/publish-async + publish-status polling을 사용하도록 바꿔 Railway 15분 제한으로 인한 Network Error를 차단 |
| 2026-04-10 | 2.13 | **팝업 닫기 버튼 대비 강화**: Gemini API 키 안내 팝업의 둥근 원형 X 버튼 배경·테두리·텍스트 대비를 높여 가독성 개선 |
| 2026-04-10 | 2.14 | **사용자 Gemini 키 비활성화**: 설정 화면의 Gemini API 키 입력란을 비활성화하고 `당분간 입력하지 않아도 됨!`으로 표시, 초기 설정 검증도 계정 정보만 보도록 조정 |
| 2026-04-10 | 2.15 | **Gemini 설정 UI 제거 보강**: 사용자 정보 저장 시 Gemini API 키 요구를 제거하고, `키 구하는 방법` 버튼과 `당분간 입력하지 않아도 됨!` 입력줄을 삭제 |

## Next Rule
- 코드 수정 후 이 파일의 `Last Updated`와 `Change Log`를 갱신
