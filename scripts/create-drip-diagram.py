"""Render the DRIP diagram as SVG and a print-resolution PNG."""
from argparse import ArgumentParser
from pathlib import Path
from xml.sax.saxutils import escape

from PIL import Image, ImageDraw, ImageFont

parser = ArgumentParser(description=__doc__)
parser.add_argument('--font-dir', type=Path, required=True)
args = parser.parse_args()
root = Path(__file__).resolve().parent.parent
width, height = 1600, 900
scale = 2
image = Image.new('RGB', (width * scale, height * scale), 'white')
draw = ImageDraw.Draw(image)
svg = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">', '<rect width="1600" height="900" fill="white"/>']
blocks = [
    (420, 70, 'Różnicowanie', 'Differentiate', ['Zwiastun pokazujący', 'nietypowy styl filmu']),
    (820, 70, 'Wzmacnianie', 'Reinforce', ['Przypomnienie', 'o zbliżającej się', 'premierze']),
    (420, 470, 'Informowanie', 'Inform', ['Informacja o dacie', 'premiery i godzinach', 'seansów']),
    (820, 470, 'Przekonywanie', 'Persuade', ['Zachęta do zakupu', 'biletu z odnośnikiem', 'do rezerwacji']),
]

def text(cx, y, value, size, color, bold=False):
    font_file = 'Carlito-Bold.ttf' if bold else 'Carlito-Regular.ttf'
    font = ImageFont.truetype(str(args.font_dir / font_file), size * scale)
    assert draw.textlength(value, font=font) <= 324 * scale, value
    draw.text((cx * scale, y * scale), value, font=font, fill=color, anchor='mm')
    weight = '700' if bold else '400'
    svg.append(f'<text x="{cx}" y="{y}" text-anchor="middle" dominant-baseline="central" font-family="Carlito,Arial,sans-serif" font-size="{size}" font-weight="{weight}" fill="{color}">{escape(value)}</text>')

for x, y, title, english, example in blocks:
    draw.rounded_rectangle((x*scale, y*scale, (x+360)*scale, (y+360)*scale), radius=38*scale, fill='#deedf7', outline='black', width=2*scale)
    svg.append(f'<rect x="{x}" y="{y}" width="360" height="360" rx="38" fill="#deedf7" stroke="black" stroke-width="2"/>')
    text(x+180, y+75, title, 44, '#000000', True)
    text(x+180, y+122, english, 32, '#555555')
    first = y + 235 - (len(example)-1)*23
    for i, line in enumerate(example):
        text(x+180, first+i*46, line, 36, '#555555')
svg.append('</svg>')
(root/'assets/drip-komunikacja-kinowa.svg').write_text('\n'.join(svg), encoding='utf-8')
image.save(root/'assets/drip-komunikacja-kinowa.png', dpi=(508, 508))
