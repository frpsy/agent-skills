# agent-skills

노트북·맥북에서 같은 AI 스킬을 쓰기 위한 설치 모음입니다. 스킬 파일은 넣지 않고 설치 명령만 관리합니다.

## 설치

맥북·리눅스:

```bash
git clone https://github.com/frpsy/agent-skills && bash agent-skills/setup-skills.sh
```

Windows(PowerShell):

```powershell
git clone https://github.com/frpsy/agent-skills; ./agent-skills/setup-skills.ps1
```

## 업데이트

```bash
npx skills update -g
```

## 포함 스킬

| 스킬 | 출처 |
|---|---|
| karpathy-guidelines | multica-ai/andrej-karpathy-skills |
| watch | bradautomates/claude-video |
| humanizer | DaleSeo/korean-skills |
| superpowers (14개) | obra/superpowers |
| skill-creator | anthropics/skills |

## 참고

- Agent Memory는 서버가 필요해 제외했습니다.
- Superpowers의 `using-superpowers`는 모든 대화에서 스킬 호출을 강제합니다. 부담스러우면 이 줄만 빼고 프로젝트별로 설치하세요.
