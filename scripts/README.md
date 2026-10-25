# Skład pracy

Pełny PDF i Word można zbudować jednym poleceniem z katalogu projektu:

```sh
scripts/render-thesis.py
```

Polecenie wymaga `uv`, `pandoc`, `tectonic`, LibreOffice i Popplera. Zależność `python-docx` jest przygotowywana automatycznie przez `uv`. Najpierw uruchamiany jest `render-pdf.sh`, a potem `render-docx.sh`. Każdy etap podaje czas wykonania.

Jeżeli źródła, skrypty, ilustracje, lokalne fonty i oba gotowe pliki nie zmieniły się, kolejne wywołanie pomija skład. Suma kontrolna gotowych plików chroni przed użyciem zmienionego lub uszkodzonego eksportu. Lokalny zapis w `.cache/thesis-render.json` można usunąć. Wymuszenie pełnego składu:

```sh
scripts/render-thesis.py --force
```

Pliki wchodzące do pracy określa wyłącznie `scripts/thesis-sources.txt`. Materiały bibliograficzne i recenzje nie są składane. Samo przemianowanie źródła wymaga aktualizacji tej listy.

Przykładowy pomiar na tym komputerze: pełna para eksportów około 5 sekund, sprawdzenie niezmienionych plików około 0,1 sekundy. Czas pierwszego uruchomienia może obejmować pobranie zależności i pakietów TeX. Osobne renderowanie stron do obrazów na potrzeby oceny wyglądu jest dodatkowym etapem kontroli, nieuwzględnionym w tych pomiarach.
