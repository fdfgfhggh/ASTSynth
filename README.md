# AST Synth (этап 1 — рабочее ядро)

Полифонический (16 голосов) синтезатор VST3 на C++/JUCE.

## Что уже есть
- 2 wavetable-осциллятора (морфинг Sine → Triangle → Saw → Square, октава, fine-detune, уровень)
- Sub-осциллятор (-1/-2 октавы) и Noise
- Фильтр Low/High/Band Pass (cutoff, resonance, envelope amount)
- ADSR для громкости и для фильтра
- LFO (цель: Cutoff / Pitch / Amp / Wave), pitch-bend
- Тёмный неоновый интерфейс, автоматизация всех параметров из FL Studio
- Состояние/пресеты сохраняются самой DAW (в проекте .flp и в меню пресетов плагина FL)

## Способ А — собрать без установки Visual Studio (GitHub Actions)
1. Создайте бесплатный аккаунт на github.com и новый репозиторий.
2. Загрузите в него все файлы этой папки (включая скрытую папку `.github`).
3. Вкладка **Actions → Build VST3 → Run workflow**.
4. Через ~5–10 минут скачайте артефакт `AST-Synth-VST3` — внутри папка `AST Synth.vst3`.
5. Положите её в `C:\Program Files\Common Files\VST3\`.

## Способ Б — собрать локально
1. Установите (один раз): `winget install Git.Git`, `winget install Kitware.CMake`,
   `winget install Microsoft.VisualStudio.2022.BuildTools` (при установке выберите
   «Разработка классических приложений на C++»; сама среда Visual Studio не нужна).
2. Запустите `build.bat` (первый раз скачает JUCE, нужен интернет).
3. Запустите `install.bat` от имени администратора.

## Подключение в FL Studio
Options → Manage plugins → Find installed plugins → в браузере плагинов найдите **AST Synth** → добавьте на канал.

## Лицензия
JUCE 8 доступен по AGPLv3 или коммерческой лицензии. Для личного использования проблем нет; при распространении плагина другим людям нужно выполнить условия AGPL (открыть код) либо купить лицензию JUCE.
