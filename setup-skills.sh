#!/usr/bin/env bash
# 맥북·리눅스·Git Bash용. 전역(-g) 설치라 모든 프로젝트에서 보입니다.
# 일부 에이전트(PromptScript 등)는 전역 설치를 지원하지 않아 오류를 냅니다.
# 그 오류로 전체가 멈추지 않도록 각 명령을 계속 실행하고, 마지막에 결과를 확인합니다.
cmds=(
  "multica-ai/andrej-karpathy-skills"
  "obra/superpowers"
  "DaleSeo/korean-skills@humanizer"
  "bradautomates/claude-video --skill watch"
  "anthropics/skills --skill skill-creator"
  "rohitg00/agentmemory"
)
for c in "${cmds[@]}"; do
  echo "=== skills add $c"
  npx -y skills add $c -g -y || echo "경고: 일부 에이전트에서 실패했습니다. 아래 목록으로 확인하세요."
done
echo
echo "설치 확인 (오류 메시지가 있어도 아래 목록에 보이면 설치된 것입니다):"
npx -y skills ls -g
# Agent Memory는 스킬만 설치합니다. 기억 기능은 별도 서버(npx -y @agentmemory/agentmemory@latest)가 있어야 동작합니다.
