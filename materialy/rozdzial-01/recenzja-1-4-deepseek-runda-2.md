# Recenzja podrozdziału 1.4, runda 2

Recenzja niezależna. Recenzowany plik: `01-04-formy-promocji-filmow-w-mediach-spolecznosciowych-i-kryteria-ich-oceny.md`.

SHA256: `915a1f2d09bb5b79a8db7622a72bf94e6cee3f7363e5d6f06d6fdc463dd14ccd`

Ocenę oparto na `AGENTS.md`, `Konspekt_pracy_magisterskiej.md`, podrozdziałach 1.1-1.3, plikach z `bibliografia-md/` oraz obu eksportach: `praca-magisterska.pdf` (22 strony) i `.cache/review-1-4-r2/docx/praca-magisterska.pdf` (23 strony). Nie korzystałem z ocen innych recenzentów z tego rundy. Tekstu pracy nie zmieniałem.

## Wniosek ogólny

Wersja jest wyraźnie lepsza od pierwszej. Kryteria zostały nazwane i uzasadnione, tabela konkretyzuje już jeden wymiar, grupa „Zapraszanie do udziału” otrzymała miarę w postaci gotowości do reakcji, a rozróżnienie zainteresowania filmem i wyboru kina zostało wypowiedziane wprost. Powtórzenia z 1.2 i podwójny opis nadawcy zostały skrócone. Podpis, tabela i źródło są w PDF na jednej stronie, a tabela i źródło mają 10 pkt. Geometria kolumn w obu eksportach wymaga jednak wyrównania z zapisem w Markdown.

Trzy kategorie pozostają jednak poniżej 9. Nie z powodu braku treści, ale z powodu czterech miejsc, które trzeba poprawić: sposobu wyliczenia sześciu kryteriów, zbyt mocnego zdania końcowego, układu tabeli w obu eksportach oraz nieparalelnego wyliczenia w opisie autora i warunków. To są zmiany miejscowe, nie przebudowa podrozdziału.

## Oceny

| Kategoria | Ocena 0-10 | Uzasadnienie |
|---|---:|---|
| Spójność | 8,5 | Główna linia jest czytelna: formy, tabela, kryteria, rozróżnienia na końcu. Psują ją dwa miejsca. Po „Pierwszym” i „Drugim” autorka wprowadza autentyczność i wiarygodność jako „dwa osobne kryteria” bez numerów, a potem pisze „Kolejnym” i „Ostatnim”. Czytelnik traci rachubę sześciu kryteriów. Zdanie końcowe mówi, że przyjęty porządek „łączy” przegląd form z oceną odbioru przez pokolenie Z, choć podrozdział tę ocenę dopiero przygotowuje. |
| Jasność | 8,5 | Zdania są przeważnie zrozumiałe przy pierwszym czytaniu, a przykłady konkretne. Niejasne pozostają: nieparalelne wyliczenie „publikację oficjalną, współpracę promocyjną lub niezależną wypowiedź widza”, niejednoznaczne „Kolejnym” w wyliczeniu kryteriów oraz „przed wyborem seansu” w pierwszym akapicie, które zaciera rozróżnienie filmu i kina z 1.1. |
| Przyjemność czytania | 8,5 | Środek czyta się dobrze, grupy mają podobny rytm i długość. Akapit z kryteriami jest gęsty i wyliczeniowy. W Wordzie akapit wprowadzający tabelę jest wyśrodkowany i ma interlinię pojedynczą, co wyraźnie odbiera płynność i wygląda na błąd eksportu. PDF ma poprawny akapit wprowadzający, ale geometria kolumn w obu eksportach nie odpowiada zapisowi w Markdown. |
| Napełnienie treścią | 9 | Cztery grupy są dobrze opisane, sześć kryteriów ma funkcję i uzasadnienie, a tabela rozwija tylko przydatność informacji. Grupa czwarta nie wypada z porównania, ponieważ ma osobne kryterium reakcji. Rozróżnienie zainteresowania tytułem i zamiaru wybrania kina jest wypowiedziane wprost. |
| Rozwinięcie tematu | 9 | Obie części tytułu są pokryte. Formy mają opis funkcji i przykłady, kryteria przygotowują badanie, a odwołania do H1-H4 zamykają wywód. Brakuje gotowej ankiety, ale jej nie wymagam. Objętość 1.4 to strony 19-22, około 3,2 strony, czyli w granicach 3-4 stron. |
| Brak nadmiarowości | 9 | Powtórzenia z 1.2 i podwójny opis nadawcy zostały usunięte. Pozostałe przykłady, w tym zwiastun przesłany przez znajomego i recenzja na telefonie, mają funkcję wyjaśniającą. Tekst jest zwarty. |

## Co zostało poprawione

1. Kryteria nie są już swobodną listą. Autorka nazywa je jako sądy respondenta i wiąże z 1.1, 1.3 oraz celem badania.
2. Tabela nie tworzy drugiego zestawu kryteriów. Wszystkie wiersze dotyczą przydatności informacji przy wyborze filmu, a pytania są pomocnicze.
3. Grupa „Zapraszanie do udziału” ma miarę. Kryterium deklarowanej gotowości do reakcji obejmuje komentarz, udostępnienie i zadanie konkursowe.
4. Zainteresowanie filmem i zamiar wybrania kina są rozdzielone. Autorka pokazuje, że widz może chcieć zobaczyć film, ale poczekać na seans domowy.
5. Powtórzenia zostały skrócone. Materiały z produkcji są opisane przez odesłanie do 1.2, a opis autora i udostępnienia jest jednym krótkim akapitem.
6. Podpis, tabela i źródło są w PDF razem na stronie 21. Tabela i źródło mają 10 pkt, podpis 12 pkt i pogrubienie.

## Zmiany obowiązkowe

### 1. Poprawić akapit wprowadzający tabelę w Wordzie

W `praca-magisterska.docx` akapit „Tabela 1 pokazuje, jak przyjęte grupy można porównywać pod względem przydatności informacji przy wyborze filmu” ma ustawienia `jc=center`, `line=240` i `firstLine=0`. W eksporcie `.cache/review-1-4-r2/docx/praca-magisterska.pdf`, na stronie 22, pierwszy i ostatni wiersz zaczynają się na około 102 pkt, a lewy margines tekstu wynosi 85,6 pkt. Odstęp między wierszami wynosi około 14,6 pkt, podczas gdy tekst główny ma około 21,6 pkt. Akapit jest więc wyśrodkowany i ma interlinię pojedynczą zamiast justowania i 1,5.

Akapit jest tekstem głównym, nie podpisem ani źródłem. Trzeba przywrócić mu justowanie, interlinię 1,5, wcięcie pierwszego wiersza 0,5 cm i powiązanie z tabelą. Najlepiej poprawić skrypt eksportu, który obejmuje akapit poprzedzający `\figurestart` ustawieniami środowiska tabeli.

### 2. Ujednolicić geometrię tabeli w obu eksportach z zapisem w Markdown

W Markdown tabela ma kolumny 0,23, 0,24 i 0,53 szerokości tekstu, czyli około 3,7, 3,8 i 8,5 cm. W obu eksportach układ jest inny. W PDF kolumny zaczynają się na 85, 218,5 i 385,3 pkt, co daje około 29, 37 i 34 procent. W Wordzie siatka ma 2668, 3335 i 3068 twips, czyli około 4,7, 5,9 i 5,4 cm, a więc te same 29/37/34 procent. Oba eksporty są więc spójne ze sobą, ale nie z aktualnym zapisem tabeli w Markdown.

Trzecia kolumna jest przez to węższa niż zamierzona, a pytania łamią się na więcej wierszy. Trzeba albo wygenerować oba eksporty z aktualnego zapisu 23/24/53, albo zmienić zapis w Markdown na 29/37/34, jeżeli taki układ jest świadomie przyjęty. Ważne, żeby źródło, PDF i Word opisywały ten sam układ. Warto przy tym sprawdzić, czy górna linia tabeli jest widoczna, ponieważ w PDF tabela ma wyraźną linię górną, a w Wordzie widać przede wszystkim linię pod nagłówkiem.

### 3. Uczynić wyliczenie sześciu kryteriów jawnym

Wiersze 43-45:

> Pierwszym jest postrzegana zdolność publikacji do zwrócenia uwagi [...] Drugim jest przydatność informacji [...] Postrzeganą autentyczność i postrzeganą wiarygodność traktuje się jako dwa osobne kryteria [...] Kolejnym kryterium jest deklarowana gotowość do reakcji [...] Ostatnim kryterium [...] jest deklarowana skłonność widza do obejrzenia filmu w kinie.

Po „Drugim” pojawiają się dwa kryteria bez numerów, a „Kolejnym” nie mówi, czy chodzi o trzecie, czy o piąte. Trzeba napisać na przykład: „Trzecim i czwartym są postrzegana autentyczność i postrzegana wiarygodność [...]. Piątym jest deklarowana gotowość do reakcji [...]. Szóstym, odpowiadającym głównemu celowi pracy, jest deklarowana skłonność widza do obejrzenia filmu w kinie”. To porządkuje akapit bez dodawania treści.

### 4. Poprawić zdanie końcowe

Wiersz 47:

> Przyjęty porządek łączy więc przegląd form promocji z oceną ich odbioru przez przedstawicieli pokolenia Z.

Podrozdział nie ocenia jeszcze odbioru przez pokolenie Z. Przygotowuje kryteria do takiej oceny. Zdanie należy zastąpić na przykład: „Przyjęty porządek przygotowuje porównanie form promocji z ich odbiorem przez przedstawicieli pokolenia Z, które zostanie przeprowadzone w części badawczej”. Następne zdanie o rozdziale 2 może pozostać.

### 5. Uporządkować wyliczenie w opisie autora i warunków

Wiersz 41:

> publikację oficjalną, współpracę promocyjną lub niezależną wypowiedź widza

Pierwszy element jest rodzajem publikacji, drugi warunkiem jej powstania, trzeci rodzajem wypowiedzi. Elementy nie są równoległe. Trzeba napisać na przykład: „oficjalną publikację branży, materiał powstały we współpracy promocyjnej lub niezależną wypowiedź widza”. Sens pozostaje ten sam, a wyliczenie staje się zrozumiałe.

## Drobne uwagi, niewymagające osobnej przebudowy

1. Wiersz 3: „przed wyborem seansu” lepiej zastąpić „przed wyborem filmu” albo „przed decyzją o obejrzeniu filmu”, żeby nie zacierać rozróżnienia z 1.1.
2. Wiersz 32: pytanie „Czy zadanie i wypowiedzi uczestników dostarczają wskazówek przy wyborze filmu?” łączy dwa przedmioty. Jeżeli autorka chce zachować jeden przedmiot, może napisać „Czy wypowiedzi uczestników wywołane zadaniem dostarczają wskazówek przy wyborze filmu?”. Obecna wersja jest zrozumiała, ale jest to jedyny wiersz tabeli, który łączy zadanie i wypowiedzi.
3. Przypis 53 do Kerrigan i Yalkin jest poprawny. Skrót zgadza się z 1.3 i z pełnym opisem w 1.1. Nie trzeba go zmieniać. Dla pełnej jednolitości rozdziału warto jednak zauważyć, że Fill (s. 12-13), Kerrigan 2010 (s. 127-128) i Solomons (s. 329) są w 1.4 powtórzeni w pełnej formie, choć pełne opisy pojawiły się już w 1.1 i 1.2. To drobna niejednolitość bibliograficzna, nie błąd merytoryczny.

## Ocena zastrzeżeń autorki

### Chronologia grup

Zastrzeżenie jest słuszne. Produkcja filmu nie jest etapem kontaktu widza z publikacją. Wywiad z planu można obejrzeć przed premierą, po premierze albo po seansie, więc porządek „przed seansem, w czasie produkcji, po seansie” mieszałby etapy powstawania filmu z etapami odbioru. Obecne uzasadnienie przez pytania o charakter filmu, sposób jego powstania i odbiór po seansie jest poprawne. Nie wymagam wprowadzania chronologii.

Jednocześnie warto dopilnować, żeby „jego realizację” w wierszu 7 było czytane jako „sposób powstania filmu”, a nie jako ocena jakości wykonania. Jeżeli autorka chce uniknąć tej dwuznaczności, może napisać „sposób jego powstania”. To nie jest jednak warunek konieczny do przyjęcia.

### Skrócony przypis Kerrigan i Yalkin

Zastrzeżenie jest słuszne w odniesieniu do tego przypisu. W 1.3 ten sam tekst jest przywoływany w skrócie, a pełny opis znajduje się w 1.1. Skrót w 1.4 jest więc zgodny z konwencją rozdziału. Nie wymagam powtarzania pełnego opisu ani dodawania odsyłacza redakcyjnego.

## Kontrola tabeli

| Element | PDF | Word |
|---|---|---|
| Podpis, tabela i źródło na jednej stronie | Tak, strona 21 | Tak, strona 22 |
| Podpis 12 pkt, pogrubiony, bez kropki | Tak | Tak |
| Tabela 10 pkt | Tak | Tak |
| Źródło 10 pkt | Tak | Tak |
| Tabela w marginesach | Tak | Tak |
| Proporcje kolumn | 29/37/34 procent, niezgodne z zapisem 23/24/53 w Markdown | 29/37/34 procent, niezgodne z zapisem 23/24/53 w Markdown |
| Akapit wprowadzający | Justowany, interlinia 1,5 | Wyśrodkowany, interlinia pojedyncza |
| Górna linia tabeli | Widoczna | Wymaga sprawdzenia |

Oba eksporty są spójne ze sobą pod względem proporcji kolumn, ale nie z aktualnym zapisem tabeli w Markdown. To trzeba wyrównać przed oddaniem pracy.

Treść tabeli jest teraz jednorodna. Wszystkie wiersze odpowiadają na pytanie o przydatność informacji przy wyborze filmu, a nie mieszają uwagi, autentyczności i zamiaru wizyty. Jedyny resztkowy problem to połączenie zadania i wypowiedzi uczestników w ostatnim wierszu, opisane w uwagach drobnych.

## Kontrola źródeł

| Odwołanie | Wynik |
|---|---|
| Fill i Turnbull, 2023, s. 12-13 | Rozdział o komunikacji marketingowej rozróżnia narzędzia, media i treści. Twierdzenie o reklamie i public relations jako narzędziach oraz mediach jako kanałach ma pokrycie. |
| Solomons, Kliphuis i Wadley, 2022, s. 329 | Część 12.3.1 rozróżnia treści wideo służące informowaniu i rozrywce oraz reklamy w formie nagrań. Parafraza prawidłowa. |
| Dabrovolskas, 2024, s. 27-28 | Tekst omawia plakat, funkcję narracyjną zwiastuna i napięcie między ujawnieniem informacji a zachowaniem części historii. Twierdzenia mają pokrycie. |
| Kerrigan, 2010, s. 127-128 | Opis materiałów z produkcji, wywiadów i zdjęć z planu ma pokrycie. Odesłanie do 1.2 jest właściwe i nie powtarza całego wywodu. |
| Kerrigan i Yalkin, 2009, s. 4-9 | Analiza recenzji użytkowników i badania wyboru filmu uzasadnia twierdzenie o korzystaniu z ocen. Sformułowanie „tworzenie takich ocen” jest nieco szersze niż analiza treści recenzji; bezpieczniej byłoby „cechy takich ocen”, ale nie jest to błąd blokujący. |
| Solomons, Kliphuis i Wadley, 2022, s. 365-366, 433-434 | Strony dotyczą konkursów na profilach społecznościowych oraz planowania treści i rozmów z odbiorcami. Zastosowanie do kina jest oznaczone jako przykład autorski. |

Nie znalazłem twierdzenia, które przypisywałoby źródłu skuteczność danej formy w przyciąganiu pokolenia Z. To ograniczenie jest ważne i zostało zachowane.

## Decyzja

Nie przyjmuję jeszcze tej wersji. Trzy kategorie są poniżej 9: spójność, jasność i przyjemność czytania. Po wykonaniu zmian 1-5 tekst powinien osiągnąć 9 we wszystkich kategoriach. Nie wymagam nowych form promocji, gotowej ankiety ani nowego katalogu kryteriów. PDF ma poprawny podpis, tabelę i źródło na jednej stronie oraz 10 pkt, ale jego kolumny nie odpowiadają zapisowi w Markdown. Oba eksporty wymagają wyrównania geometrii tabeli, a Word dodatkowo naprawy akapitu wprowadzającego. Objętość pozostaje w granicach 3-4 stron.
