# MyDay Harness Workflow

## Goal
하네스 기법으로 앱 수정/검증/배포를 일관되게 관리한다.

## Core Loop
1. `PROJECT_STATUS.md` 확인
2. 변경 범위 확정
3. 코드 수정
4. 커밋
5. `scripts/harness_cycle.sh` 실행 (버전 증가 -> 빌드 -> 푸시 -> 설치 -> 실행)
6. `PROJECT_STATUS.md` 업데이트

## Rules
- 코드 수정 후 배포 루프는 반드시 수행한다.
- 배포 루프 실행 시 앱 버전은 항상 `v X.Y`에서 다음 단계로 0.1씩 증가한다.
- 커밋은 변경 목적 1개 기준으로 작게 유지한다.
- 실패 로그는 숨기지 않고 다음 액션에 반영한다.

## Device Target
- Package: `com.mooja.autopost`
- Activity: `com.mooja.autopost/.MainActivity`

## Build Target
- Smali Project: `recovery/MyDayWriter_v2.8_recovered_smali_project`
- Output: `/tmp/myday_latest_signed.apk`
