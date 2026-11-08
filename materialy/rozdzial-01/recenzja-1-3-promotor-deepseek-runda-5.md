# Recenzja promotorska 1.3, runda 5

## 1. Identyfikator wersji i główna myśl

Plik: `01-03-rola-mediow-spolecznosciowych-w-kreowaniu-autentycznosci-i-wiarygodnosci.md`.

SHA256 przed lekturą i po lekturze: `7572a3181f61072629868731fe00dc0d21c84b9fee95792a5abc58f44ef34f08`. Hash nie zmienił się.

Recenzowałem wyłącznie podrozdział 1.3. Przeczytałem `AGENTS.md`, `.agents/skills/thesis-promotor/writing-style.md`, `Konspekt_pracy_magisterskiej.md` oraz podrozdziały 1.1, 1.2 i 1.4. Nie czytałem innych recenzji ani pliku `recenzja-1-3-status.md`.

Główna myśl tekstu: media społecznościowe dają widzowi więcej wskazówek o autorze recenzji, ale żadna z tych wskazówek nie rozstrzyga równocześnie o szczerości wypowiedzi i kompetencji autora, dlatego autentyczność i wiarygodność trzeba oceniać osobno.

## 2. Oceny

| Kategoria | Ocena | Uzasadnienie |
| --- | --- | --- |
| Spójność | 8 | Kierunek wywodu jest czytelny, ale przejście od modelu Smith i Du do wcześniejszej znajomości autora jest zbyt nagłe, a zakończenie nie wraca wprost do roli mediów społecznościowych. |
| Jasność | 8 | Definicje są precyzyjne, ale „czy ich upodobania są podobne” ma niejasne odniesienie, a „wiarygodna recenzja nie musi zachęcać” miesza wiarygodność z siłą przekonywania. |
| Przyjemność czytania | 9 | Tekst brzmi naturalnie, ma zróżnicowany rytm i nie popada w monotonnię. Drobne zastrzeżenia dotyczą jednego długiego zdania i przejścia między akapitami. |
| Zawartość merytoryczna | 7 | Parafrazy są na ogół wierne, ale zdanie o filmach amerykańskich w badaniu Wang i współautorów przedstawia wynik interakcji nieprecyzyjnie, a przypis do Zhao nie wskazuje strony z głównym wynikiem. |
| Rozwinięcie tematu | 8 | Podrozdział realizuje tytuł i nie wchodzi w materiał 2.3. Rola mediów społecznościowych jest jednak pokazana głównie przez przykłady, bez wyraźnego podsumowania w zakończeniu. |
| Zwięzłość i proporcje | 9 | Tekst jest zwarty, bez powtórzeń i dygresji. Trzy studia empiryczne dostają proporcjonalną przestrzeń, choć badanie Shieh i Lin zajmuje najwięcej miejsca. |

## 3. Werdykt i kontrola źródeł

Werdykt: **wymaga poprawek przed oddaniem**. Styl i kompozycja są blisko poziomu 9, ale warstwa źródłowa wymaga kilku konkretnych korekt. Nie trzeba przebudowywać podrozdziału.

Kontrola źródeł: **błędy blokujące** w obecnej postaci, choć o zasięgu lokalnym. Sprawdziłem wszystkie sześć przypisów i parafrazy w pełnych plikach `bibliografia-md/`: Smith i Du (definicja, model dwutorowy, zastrzeżenie o łączeniu torów), Lou i Kim (s. 3, dwa wymiary Hovlanda), Shieh i Lin (metoda 2x2, wyniki, ograniczenia, aneks), Zhao i współautorzy (dane, wyniki, interakcja, ograniczenia) oraz Wang, Qi i Xu (dane, wyniki kinowe i online, ograniczenia). PDF-y wykorzystałem do sprawdzenia paginacji Shieh i Lin oraz metadanych Smith i Du. Pozostałe źródła były czytelne w `md`. Nie miałem ograniczeń dostępu.

Dwa błędy blokują oddanie tego fragmentu. Po pierwsze, zdanie o filmach amerykańskich w badaniu Wang i współautorów przedstawia wynik interakcji jako niezależny efekt liczby ocen. Po drugie, przypis do Zhao pomija stronę 9, na której znajduje się główny wynik porównania użytkowników zweryfikowanych i pozostałych. Drobniejsza luka: przypis do Shieh i Lin nie wskazuje strony 361, na której autorzy wprost piszą, że mierzyli tylko zamiar obejrzenia filmu.

Zasady projektu: **bez wykrytych błędów blokujących**. Plik ma jeden nagłówek H1 i żadnych nagłówków niższych, nie zawiera myślników ani półpauz jako interpunkcji, nie odwołuje się do numerów H1-H4 i nie zawiera notatek dla autora. Jest wpisany do `scripts/thesis-sources.txt`. Tytuł pliku jest zgodny z konspektem („w ocenie autentyczności…”), ale nie z brzmieniem w `AGENTS.md` („w kreowaniu autentyczności…”). To rozbieżność w instrukcji projektu, nie w tekście. Warto ujednolicić jedno źródło tytułu.

Technika: pełne eksporty `praca-magisterska.pdf` i `praca-magisterska.docx` są spójne z tekstem. W PDF na s. 17 ostatni wiersz akapitu to samotne „kinie.”, w DOCX ten problem nie występuje. Poza tym brak przycięć, przesunięć i widocznych błędów łamania. Kwestie techniczne oceniam osobno od treści.

## 4. Uwagi

### 1. Błąd: wynik badania Wang i współautorów dotyczący filmów amerykańskich

Lokalizacja: 1.3, akapit 11 (PDF s. 17; `md`, wiersz 23).

Cytat: „…a przy filmach amerykańskich istotna była także duża liczba ocen.”

Problem: źródło mówi, że przy filmach amerykańskich sama walencja ocen nie była istotna. Istotna i rosnąca w czasie była interakcja walencji i liczby ocen. Zdanie czytane dosłownie sugeruje, że wysokie oceny działały, a duża liczba ocen była dodatkowym czynnikiem. Czytelnik może wyciągnąć wniosek, że sama liczba ocen miała istotny wpływ, czego badanie nie pokazuje.

Punkt dokumentu: zawartość merytoryczna, użycie źródeł.

Propozycja: „W przypadku filmów chińskich związek wysokich ocen z popytem nasilał się z czasem. Przy filmach amerykańskich sama wysoka ocena nie wystarczała: znaczenie miało jednocześnie wysokie oceny i duża liczba ocen.” To zdanie rozdziela dwa wyniki i oddaje interakcję.

### 2. Błąd: przypis do Zhao pomija stronę z głównym wynikiem

Lokalizacja: przypis 5 (`md`, wiersz 35; PDF s. 17).

Cytat: „Cytowane s. 2, 7-8, 11, 13, 15-16.”

Problem: bezpośrednie porównanie ocen użytkowników zweryfikowanych i pozostałych znajduje się na s. 9, w tabeli 2 i w tekście wokół niej. Cytowana s. 11 dotyczy interakcji z siłą marki, nie głównego porównania. Czytelnik idący za przypisem nie ma łatwego dostępu do twierdzenia o silniejszym związku ocen zweryfikowanych użytkowników.

Punkt dokumentu: kontrola źródeł.

Propozycja: „Cytowane s. 2, 7-9, 11, 13, 15-16.” Ewentualnie „s. 9-11” dla części wynikowej.

### 3. Konieczna poprawka: opis badania Shieh i Lin

Lokalizacja: 1.3, akapit 8 (PDF s. 16; `md`, wiersz 17).

Cytat: „W internetowym badaniu ankietowym z 2019 r. porównali cztery wersje pozytywnej opinii o filmie.”

Problem: badanie miało układ 2x2 między uczestnikami i cztery wersje opinii. Określenie „badanie ankietowe” sugeruje badanie korelacyjne i ukrywa manipulację źródłem oraz treścią. Czytelnik nie wie, czy porównanie ma charakter eksperymentalny. Dodatkowo przypis nie wskazuje s. 361, na której autorzy wprost zastrzegają, że mierzyli tylko zamiar obejrzenia filmu.

Punkt dokumentu: jasność, zawartość merytoryczna.

Propozycja: „W badaniu przeprowadzonym online w 2019 r. porównali w układzie 2x2 cztery wersje pozytywnej opinii o filmie.” W przypisie 4 dodać s. 361: „Cytowane s. 354-357, 361, 373-374.”

### 4. Błąd językowy: niejasne odniesienie „ich upodobania”

Lokalizacja: 1.3, akapit 7 (PDF s. 16; `md`, wiersz 15).

Cytat: „…pozwalających ocenić, czy ich upodobania są podobne.”

Problem: „ich” może odnosić się do autora i widza albo do dwóch innych osób. Czytelnik musi odtworzyć, kogo z kim porównuje.

Punkt dokumentu: jasność.

Propozycja: „…pozwalających ocenić, czy upodobania autora są podobne do upodobań widza.”

### 5. Konieczna poprawka: „wiarygodna recenzja nie musi zachęcać”

Lokalizacja: 1.3, akapit 12 (PDF s. 17; `md`, wiersz 25).

Cytat: „Wiarygodna recenzja nie musi zachęcać każdego widza do seansu.”

Problem: przykład, który następuje, dotyczy gustu, a nie wiarygodności. Wolno powolny film może zachęcić jedną osobę i zniechęcić drugą, choć recenzja pozostaje rzetelna. Zdanie sugeruje, że to wiarygodność jest przyczyną braku zachęty, a nie dopasowanie filmu do upodobań. Czytelnik może zmieszać wiarygodność z siłą przekonywania, czyli dwa pojęcia, które podrozdział konsekwentnie rozdziela.

Punkt dokumentu: jasność, spójność pojęciowa.

Propozycja: „Nawet recenzja, która wydaje się autentyczna i wiarygodna, nie musi zachęcać każdego widza do seansu.”

### 6. Uzasadnione ulepszenie: mechanizm przerwy między kinem a streamingiem

Lokalizacja: 1.3, akapit 11 (PDF s. 17; `md`, wiersz 23).

Cytat: „Po udostępnieniu online wcześniejsze pozytywne oceny miały większe znaczenie przy krótkiej przerwie od zakończenia pokazów kinowych.”

Problem: zdanie mówi, że przy krótkiej przerwie oceny miały większe znaczenie, ale nie mówi, co dzieje się przy długiej przerwie. Źródło rozróżnia dwie sytuacje: przy krótkiej przerwie walencja i jej interakcja z liczbą ocen nadal działają, przy długiej przerwie sama walencja traci bezpośredni wpływ, a liczy się głównie liczba ocen. Obecne podsumowanie jest prawdziwe, ale zbyt ogólne, żeby wyjaśnić mechanizm.

Punkt dokumentu: zawartość merytoryczna, jasność.

Propozycja: „Po udostępnieniu online oceny z okresu kinowego nadal wiązały się z popytem, gdy przerwa była krótka, na przykład do dwóch tygodni. Przy dłuższej przerwie sama ocena przestawała mieć bezpośrednie znaczenie, a liczyła się głównie liczba ocen.”

### 7. Uzasadnione ulepszenie: poziom analizy w badaniu Wang i współautorów

Lokalizacja: 1.3, akapit 11 (PDF s. 17; `md`, wiersz 23).

Cytat: „Analiza rynku nie dowodzi jednak, że konkretna recenzja spowodowała zakup biletu.”

Problem: badanie łączy dzienne miary ocen z dziennym popytem, czyli z deklarowaną liczbą obejrzeń i wpływami kinowymi. Nie śledzi konkretnej osoby, która przeczytała recenzję i kupiła bilet. Zastrzeżenie jest słuszne, ale nie nazywa rzeczywistego ograniczenia. Czytelnik może pomyśleć, że badanie mierzyło indywidualne zakupy i tylko nie dowiodło przyczynowości.

Punkt dokumentu: zawartość merytoryczna, źródła.

Propozycja: „Analiza łączy dzienne oceny z dziennym popytem, więc nie dowodzi, że konkretna recenzja skłoniła daną osobę do zakupu biletu.”

### 8. Uzasadnione ulepszenie: przejście do wcześniejszej znajomości autora

Lokalizacja: 1.3, akapit 7 (PDF s. 16; `md`, wiersz 15).

Cytat: „Przy ocenie autora znaczenie ma również to, co widz już o nim wie.”

Problem: poprzedni akapit kończy się modelem Smith i Du. Nowy akapit zaczyna się od „również”, ale nie mówi, co dodaje do modelu. Czytelnik widzi nowy temat zamiast kontynuacji. Warto połączyć go z pierwszym torem oceny, który polega na sprawdzaniu informacji o autorze.

Punkt dokumentu: spójność.

Propozycja: „Ocena autentyczności i wiarygodności zależy nie tylko od samej wypowiedzi, ale też od tego, co widz wie o autorze.” Dopiero potem wprowadzić trzy sytuacje.

### 9. Uzasadnione ulepszenie: zakończenie nie domyka tytułu

Lokalizacja: 1.3, akapit 12 (PDF s. 17; `md`, wiersz 25).

Cytat: „Warto więc osobno oceniać, czy wypowiedź wydaje się własną opinią autora…”.

Problem: końcowa lista dobrze porządkuje cztery kryteria, ale nie mówi, jaka jest rola mediów społecznościowych. Tytuł zapowiada odpowiedź na to pytanie, a zakończenie przechodzi do ogólnych kryteriów oceny. Główna myśl jest w tekście, ale nie w ostatnim akapicie.

Punkt dokumentu: rozwinięcie tematu, spójność.

Propozycja: dodać jedno zdanie zamykające: „Media społecznościowe dają więc widzowi więcej informacji o autorze, ale jednocześnie więcej powodów do wątpliwości, dlatego autentyczność i wiarygodność trzeba oceniać osobno.” Można też nazwać cztery kryteria: autentyczność, wiarygodność, przydatność informacyjna i zachęta do wizyty w kinie.

### 10. Preferencja: oznaczyć model Smith i Du jako propozycję teoretyczną

Lokalizacja: 1.3, akapit 6 (PDF s. 16; `md`, wiersz 13).

Cytat: „Model Smith i Du wyróżnia dwa sposoby oceny autentyczności.”

Problem: źródło przedstawia koncepcję i testowalne przewidywania, a nie empirycznie potwierdzony model. Słowo „model” nie jest błędne, ale bez „proponowany” czytelnik może przyjąć, że chodzi o ustalony wynik. Podrozdział gdzie indziej starannie rozróżnia definicje, wyniki i zastosowania, więc warto zachować tę spójność.

Punkt dokumentu: zawartość merytoryczna.

Propozycja: „Proponowany przez Smith i Du model wyróżnia…” albo „Koncepcja Smith i Du wyróżnia…”.

### 11. Preferencje opcjonalne

Zakres próby. W akapicie o Zhao (PDF s. 17; `md`, wiersz 21) warto dodać, że badanie obejmowało filmy z pierwszej dwudziestki box office. W akapicie o Wang i współautorach (PDF s. 17; `md`, wiersz 23) można podać, że próba liczyła 47 filmów chińskich i 17 amerykańskich. To nie są błędy, ale warunki zakresowe. Bez nich czytelnik może przenieść wyniki na wszystkie filmy.

Przypis do wynagrodzenia. Akapit 9 (PDF s. 17; `md`, wiersz 19) nie ma przypisu. Zdanie „jego nagranie jest także reklamą” jest twierdzeniem definicyjnym lub prawnym. Warto either oprzeć je na jednym ze źródeł o oznaczaniu współpracy, które są już w bibliografii, albo wyraźnie zaznaczyć, że to założenie przyjęte w pracy. To preferencja, nie warunek oddania.

### 12. Technika

W PDF na s. 17 ostatni wiersz podrozdziału to samotne „kinie.”. To wdowa typograficzna. Nie wpływa na treść, ale wygląda mniej starannie. DOCX tego problemu nie ma. Warto lekko przeredagować ostatnie zdanie albo zmienić długość akapitu, bez zmiany sensu.

## 5. Co zachować

Najmocniejsze są: otwarcie z konkretnymi pytaniami o własne wrażenia, znajomość filmów i wynagrodzenie; natychmiastowe rozdzielenie autentyczności i wiarygodności; przykład twórcy i krytyka oraz recenzji nagranej telefonem. Te przykłady tłumaczą model bez udawania, że są danymi.

Drugi mocny element to zastrzeżenia po każdym badaniu: Shieh i Lin mierzyli zamiar, nie zakup; Zhao badał sprzedaż, nie oceny autentyczności czytelników; Wang i współautorzy łączą dane dzienne, a nie osobiste zakupy. Te zdania powinny zostać, podobnie jak uczciwy przypis, że ujęcie Hovlanda przywołano za Lou i Kim.

Nie dodawaj nazwanej kampanii w 1.3. Wybrane kampanie są przedmiotem 2.3 i ich brak tutaj jest zaletą. Nie dodawaj też nowych śródtytułów ani numerów hipotez. Obecny liniowy wywód, bez myślników i bez zapowiedzi dalszych podrozdziałów, jest właściwy.
