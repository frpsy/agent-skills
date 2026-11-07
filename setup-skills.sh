#!/usr/bin/env bash
# 맥북·리눅스·Git Bash용. 전역(-g) 설치라 모든 프로젝트에서 보입니다.
set -e
npx -y skills add multica-ai/andrej-karpathy-skills -g -y
npx -y skills add bradautomates/claude-video --skill watch -g -y
npx -y skills add DaleSeo/korean-skills@humanizer -g -y
npx -y skills add obra/superpowers -g -y
npx -y skills add anthropics/skills --skill skill-creator -g -y
# Agent Memory는 서버가 필요해 제외했습니다. 필요할 때 따로 설치합니다.
