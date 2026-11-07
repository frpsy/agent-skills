# Windows 노트북(SYP) 인계문서 — 스킬 설치

작성: 2026-11-07 / 이 문서는 클라우드 세션에서 하던 작업을 Windows 노트북에서 이어가기 위한 것입니다.

## 목표
노트북·맥북에서 같은 AI 스킬을 쓰도록, 스킬 설치 명령을 GitHub 비공개 저장소 `frpsy/agent-skills`로 관리하고 각 기기에 전역(`-g`) 설치합니다.

## 현재 상태
- 저장소 `frpsy/agent-skills`(Private)를 만들었고, PR https://github.com/frpsy/agent-skills/pull/1 이 머지됨으로 표시됩니다.
- **미확인**: 클론에서 확인하니 `main`에는 `README.md`만 있고 `setup-skills.sh`, `setup-skills.ps1`이 보이지 않았습니다. 원인은 모릅니다. 먼저 GitHub 웹에서 `main`에 파일 3개(README.md, setup-skills.sh, setup-skills.ps1)가 있는지 확인하세요. 없으면 작업 브랜치 `claude/magical-wozniak-eonwtu`에 있습니다.
- 클라우드 컨테이너에는 스킬이 설치되어 있지만 세션이 끝나면 사라집니다.
- 이 세션에서 `-g` 옵션은 Karpathy 스킬 1개만 실제로 실행했습니다. Windows와 맥북 실기기에서는 확인하지 않았습니다.
- Windows 노트북(SYP)은 클라우드 세션에서 원격 연결이 되지 않았습니다(원인 미확인, Claude 앱 업데이트 필요 가능성만 안내됨). 맥북 연결 요청은 사용자가 거절했습니다.

## 설치할 스킬
| 스킬 | 명령 |
|---|---|
| Karpathy Guidelines | `npx -y skills add multica-ai/andrej-karpathy-skills -g -y` |
| Claude Video (`watch`) | `npx -y skills add bradautomates/claude-video --skill watch -g -y` |
| Humanizer | `npx -y skills add DaleSeo/korean-skills@humanizer -g -y` |
| Superpowers (14개) | `npx -y skills add obra/superpowers -g -y` |
| Skill Creator | `npx -y skills add anthropics/skills --skill skill-creator -g -y` |
| Agent Memory 스킬 17개(선택) | `npx -y skills add rohitg00/agentmemory -g -y` |

## Windows에서 할 일 (PowerShell)
1. Node.js가 있는지 확인합니다.
   ```powershell
   node -v
   ```
2. 위 표의 명령을 순서대로 실행합니다. 저장소 스크립트가 `main`에 있으면 아래로 한 번에 설치됩니다.
   ```powershell
   git clone https://github.com/frpsy/agent-skills
   ./agent-skills/setup-skills.ps1
   ```
   스크립트 실행이 막히면 `Set-ExecutionPolicy -Scope Process Bypass` 후 다시 실행합니다.
3. 설치 확인:
   ```powershell
   npx skills ls -g
   ```
4. Claude Code를 새로 시작해 스킬이 보이는지 확인합니다.

## 주의
- Agent Memory 서버(`npx -y @agentmemory/agentmemory@latest`)는 실행하지 않았습니다. 서버가 필요하며 기기 간 기억 공유 방식은 확인하지 못했습니다. 스킬만 설치해도 서버 없이는 기억 기능이 동작하지 않을 수 있습니다.
- Superpowers의 `using-superpowers`는 모든 대화에서 스킬 호출을 강제합니다. 부담되면 프로젝트별로만 설치하세요.
- 스킬은 외부 코드이므로 `watch`, Agent Memory 스킬의 스크립트는 한 번 훑어보세요.
- 비공개 저장소라 노트북에서 GitHub 로그인이 필요합니다.

## 다음 단계
- 설치 중 오류가 나면 오류 메시지를 그대로 Claude에게 알려 주세요.
- 맥북에도 같은 방식으로 설치하세요(`setup-skills.sh`).
