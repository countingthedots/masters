---
name: thesis-promotor
description: Uruchamia konsylium Codex 6.1-Sol Medium i OpenCode DeepSeek V4.1 Flash oraz pętlę recenzji i poprawek wskazanej części magisterki w projekcie masters.
---

Czas na review!

1. Dla tekstu napisanego w bieżącym wątku uruchom dwóch niezależnych recenzentów przez T3 Code `delegate_task`, po sprawdzeniu `orchestrator_capabilities`:
   - Codex: `providerInstanceId: "codex"`, `model: "gpt-6.1-sol"`, `target.options: {"reasoningEffort":"medium"}`.
   - OpenCode: `providerInstanceId: "opencode"`, `model: "opencode/deepseek-v4.1-flash-free"`, `target.options: {}`.
2. Każdemu przekaż tę samą wersję tekstu, kontekst zlecenia i ścieżki do konspektu, wcześniejszych części oraz bibliografii. Poleć przeczytać [writing-style.md](writing-style.md) i ocenić tekst według zawartych tam kryteriów. Recenzenci tylko recenzują, nie edytują plików. Nie musisz sam czytać writing-style.md przed delegowaniem.
3. Zbierz obie recenzje. Wprowadź uzasadnione poprawki w zakresie zlecenia. Nietrafne uwagi odrzuć z krótkim uzasadnieniem.
4. Po poprawkach uruchom dwa nowe `delegate_task` z aktualnym tekstem, nie opowiadaj o wprowadzonych zmianach żeby nie psuć kontekstu. Powtarzaj, aż obaj recenzenci dadzą co najmniej 9/10 w każdej kategorii i nie pozostaną błędy blokujące. Nie sugeruj ocen. Jeśli pętla przestaje przynosić poprawę, przedstaw rzeczywiste wyniki i nierozstrzygnięte uwagi. Przy prośbie wyłącznie o recenzję zakończ po pierwszej rundzie.
5. Oddaj krótkie podsumowanie zmian, oceny obu recenzentów i linki do ich recenzji.

Przestrzegaj lokalnego AGENTS.md i instrukcji narzędzi T3 Code. Jeśli wskazany model jest niedostępny, zgłoś to bez samowolnej zamiany.
