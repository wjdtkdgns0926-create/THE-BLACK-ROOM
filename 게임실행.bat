@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 게임 서버를 켭니다. 이 창을 닫으면 게임도 꺼집니다.
start "" "http://localhost:8000/THE%%20BLACK%%20ROOM.html"
python -m http.server 8000 2>/dev/null || py -m http.server 8000 2>/dev/null || (echo 파이썬을 찾지 못했습니다. Anaconda Prompt에서 이 폴더로 이동해 python -m http.server 8000 을 실행하세요. & pause)
