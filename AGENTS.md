# AGENTS.md

## Cel pracy w tym katalogu

W tym katalogu tworzymy pracę magisterską Nastassii Żurawel.

Tytuł:

`Komunikacja marketingowa w mediach społecznościowych a zachowania konsumentów pokolenia Z, na przykładzie branży kinowej`

Cel główny: ocena komunikacji marketingowej w mediach społecznościowych jako determinanty zachowań konsumentów pokolenia Z na rynku kinowym. Szczegóły koncepcji w `Konspekt_pracy_magisterskiej.md`.

Pytania badawcze: jak pokolenie Z ocenia instrumenty promocji kinowej, jakie czynniki decydują o wyborze kina oraz jak oceniana jest autentyczność i wiarygodność narzędzi komunikacji filmowej.

Hipotezy: H1 pokolenie Z odkrywa filmy głównie w social mediach, H2 treści UGC są bardziej autentyczne niż komunikaty dystrybutorów, H3 autentyczność zwiększa decyzję o wizycie w kinie, H4 społeczności online determinują wybór filmu.

## Zakres działań

W tym miejscu przygotowujemy:

- bibliografię i materiały źródłowe do pracy magisterskiej
- analizę artykułów naukowych
- części pracy magistreskiej
- dokumenty gotowe do składu przez `pandoc` z silnikiem `tectonic`

## Zasady edycji

- pisać i zatwierdzać kolejne podrozdziały osobno. Nie dopisywać dalszych podrozdziałów bez polecenia użytkowniczki
- przed napisaniem kolejnego podrozdziału przeczytać wcześniejsze zatwierdzone części. Rozwijać nowe zagadnienia, a do wyjaśnionych już definicji i argumentów odwoływać się krótko, bez ich ponownego omawiania
- przed oddaniem każdego tekstu zastosować skill `unslop` (`~/.agents/skills/unslop/SKILL.md`) i przeprowadzić końcową ocenę naturalności oraz spójności stylu
- pisać po polsku, chyba że dany element wymaga języka angielskiego
- zachowywać formalny, akademicki styl, ale wybierać prosty, bezpośredni język zamiast żargonu
- formułować zdania tak, aby ich sens był zrozumiały przy pierwszym czytaniu. Preferować naturalny szyk i proste spójniki, np. „ale”, zamiast podniosłych lub przestawnych konstrukcji
- opisywać konkretne sytuacje i działania: kto podejmuje decyzję, czego dotyczy wybór i kiedy następuje ocena. Unikać abstrakcyjnych sformułowań, jeśli można zastąpić je równie precyzyjnym opisem
- wyjaśniać funkcję omawianego zjawiska bezpośrednio, np. „komunikacja wyjaśnia, co organizacja oferuje”, zamiast ogólnych sformułowań o powiązaniach i zależnościach
- prowadzić wywód przez łączenie problemu z jego znaczeniem dla widza lub podmiotów branży. Związki przyczynowe wskazywać tylko wtedy, gdy uzasadniają je źródła lub przedstawione rozumowanie
- przy zmianie tematu wyraźnie sygnalizować przejście i wyjaśniać związek kolejnego zagadnienia z dotychczasowym wywodem. Czytelnik bez przygotowania marketingowego powinien rozumieć, dlaczego pojawia się nowe pojęcie lub model. Unikać układu przypominającego konspekt, w którym kolejne definicje i tematy następują po sobie bez powiązania
- ograniczać zdania dopowiadające, co należy od czego odróżnić, oraz zastrzeżenia o możliwych błędnych interpretacjach. Zachowywać je, gdy są potrzebne do zrozumienia pojęcia, zakresu badania lub ograniczeń wnioskowania
- traktować redakcję użytkowniczki jako wzorzec preferowanego sposobu wyrażania myśli. Zachowywać jej sens i bezpośredniość, korygując gramatykę, pisownię oraz ewentualne nieścisłości merytoryczne
- preferować minimalne i czytelne zmiany w istniejących plikach
- przygotowywać pliki tak, aby dało się je kompilować przez `pandoc` i `tectonic`
- do programowej edycji i manipulacji tekstem/PDF-ami używaj `uv` i instaluj potrzebne biblioteki

## Zasady redakcyjne pracy

- nie używać myślników ani półpauz jako znaków interpunkcyjnych. Zastępować je przecinkami, dwukropkami, nawiasami albo spójnikami
- nie zmieniać łączników należących do nazwisk, utrwalonych terminów, tytułów publikacji, adresów URL ani identyfikatorów DOI
- każdy plik rozdziału umieszczony w `scripts/thesis-sources.txt` ma zawierać dokładnie jeden nagłówek pierwszego poziomu i żadnych nagłówków niższych poziomów
- po usunięciu nagłówków pomocniczych zachowywać logiczny tok wywodu. W razie potrzeby dodawać krótkie zdania łączące sąsiednie akapity
- kwerenda literatury, notatki badawcze, materiały robocze oraz `00-wstep.md` nie należą do głównego dokumentu i nie mogą być dodawane do `scripts/thesis-sources.txt`
- główny dokument renderować wyłącznie ze źródeł wymienionych w `scripts/thesis-sources.txt`
- podpis rysunku umieszczać pod rysunkiem, pogrubioną czcionką 12 pkt, bez kropki końcowej. Informację o źródle umieszczać niżej, zwykłą czcionką 10 pkt
- komunikaty commitów pisać po angielsku

## Zasady dotyczące źródeł

- dla tabel przeglądu literatury preferować artykuły z ostatnich 10 lat
- odróżniać artykuły przeglądowe od badań empirycznych
- opisywać wpisy na podstawie wiarygodnych metadanych, abstraktów i treści źródłowych
- jeśli metadane APA są niepełne, nie wymyślać braków. Zostawić możliwie poprawną wersję roboczą
- źródłowe PDF-y z `bibliografia/` traktować jako archiwum. Czytać przede wszystkim pliki `Markdown` z `bibliografia-md/`. Do surowych PDF-ów wracać tylko gdy plik `.md` nie istnieje albo ekstrakcja jest nieczytelna
- wszystkie twierdzenia, streszczenia i odnośniki w pracy opierać na faktach możliwych do zweryfikowania w bibliografii, najlepiej przez cytowanie lub parafrazowanie fragmentów z `bibliografia-md/`
- nowe źródła są dozwolone. Pobierz je do `bibliografia/` i przekonwertuj do `bibliografia-md/` za pomocą `scripts/convert-bibliografia-pdfs.sh`. Używaj ich jako podstawy dopiero po konwersji

## Bezwzględny zakaz

- nigdy nie dodawać do dokumentów w tym katalogu sekcji ani tekstu typu `Uwagi robocze`
- nigdy nie zostawiać w finalnym dokumencie notatek do dalszej edycji skierowanych do autora
- nigdy nie używać odniesień do artykułów które nie jesteś w stanie przeczytać

## Preferencje formatowania

- szerokie tabele przygotowywać z myślą o układzie poziomym PDF
- w materiałach roboczych stosować przejrzyste nagłówki i krótkie sekcje pomocnicze. W plikach rozdziałów zachowywać zasady nagłówków określone w sekcji „Zasady redakcyjne pracy”
- dbać o dobry stan tabel w finalnym PDF. Utrzymuj właściwe szerokości kolumn i poprawne łamanie treści. Usuwaj ostrzeżenia typu `Overfull \hbox` gdy da się je usunąć sensowną redakcją układu lub treści
- zachowywać standard UEP w obu eksportach: format A4, margines górny i dolny 2,5 cm, lewy 3 cm, prawy 2 cm, Carlito lub Calibri 12 pkt, interlinia 1,5, wcięcie pierwszego wiersza 0,5 cm i justowanie

## Styl diagramów

- wzorcem wizualnym dla wszystkich diagramów jest `assets/sekwencja-oddzialywania.png`. Nowe diagramy mają tworzyć z nim jeden spójny system
- stosować białe tło i poziome płótno w proporcji 16:9, z dużą ilością wolnej przestrzeni wokół diagramu
- przebieg procesu prowadzić wyłącznie pionowo, w jednej wyśrodkowanej kolumnie, bez układu węża, bocznych odgałęzień ani przesuniętych poziomów
- etapy umieszczać w identycznych jasnoniebieskich prostokątach z mocno zaokrąglonymi narożnikami, cienkim czarnym obrysem i równymi odstępami
- etapy łączyć prostymi czarnymi strzałkami skierowanymi pionowo w dół
- numer etapu umieszczać poza prostokątem, po jego lewej stronie. Stosować duży, czarny i pogrubiony krój oraz wyrównanie numerów do jednej osi
- nazwę etapu umieszczać centralnie w prostokącie czarną czcionką bezszeryfową, a objaśnienie bezpośrednio pod nią mniejszą szarą czcionką
- zachowywać jednakowe szerokości i wysokości pól, wspólną oś pionową, identyczne odstępy oraz optyczne wyśrodkowanie całej kompozycji
- nie dodawać pasów pomocniczych, legend, ozdobnych ikon, cieni, gradientów ani dodatkowych kolorów, jeśli użytkownik nie zatwierdzi odstępstwa
- przed użyciem diagramu sprawdź jego stronę w obu pełnych eksportach. Żaden element nie może być przycięty, przesunięty ani pomniejszony do nieczytelnego rozmiaru
- nie regenerować ani nie nadpisywać zatwierdzonego pliku `assets/sekwencja-oddzialywania.png` bez wyraźnego polecenia użytkownika

## Kompilacja

- **nigdy nie generować osobnych PDF-ów dla pojedynczych rozdziałów**. Zawsze generować tylko całość pracy (`praca-magisterska.pdf`) za pomocą `scripts/render-pdf.sh`
- po każdej istotnej zmianie treści lub układu pracy należy od razu przegenerować całą pracę. Zmiany w instrukcjach, notatkach bibliograficznych i innych materiałach niewłączanych do głównego dokumentu nie wymagają kompilacji
- po każdej kompilacji `PDF` należy kompilować plik Word za pomocą `scripts/render-docx.sh`
