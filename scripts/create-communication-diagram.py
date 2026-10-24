"""Create a simplified communication model with a cinema example."""
from argparse import ArgumentParser
from pathlib import Path
from xml.sax.saxutils import escape
from PIL import Image, ImageDraw, ImageFont

parser = ArgumentParser(description=__doc__)
parser.add_argument('--font-dir', type=Path, required=True)
args = parser.parse_args()
root = Path(__file__).resolve().parent.parent
width, height, scale = 1600, 900, 2
im = Image.new('RGB', (width*scale, height*scale), 'white')
d = ImageDraw.Draw(im)
svg = ['<svg xmlns="http://www.w3.org/2000/svg" width="1600" height="900" viewBox="0 0 1600 900">', '<rect width="1600" height="900" fill="white"/>']

def text(x,y,value,size,color='#000000',bold=False,max_width=1100):
    font = ImageFont.truetype(str(args.font_dir/('Carlito-Bold.ttf' if bold else 'Carlito-Regular.ttf')),size*scale)
    assert d.textlength(value,font=font) <= max_width*scale,value
    d.text((x*scale,y*scale),value,font=font,fill=color,anchor='mm')
    svg.append(f'<text x="{x}" y="{y}" text-anchor="middle" dominant-baseline="central" font-family="Carlito,Arial,sans-serif" font-size="{size}" font-weight="{700 if bold else 400}" fill="{color}">{escape(value)}</text>')

text(800,35,'Szum: inne treści mogą rozpraszać uwagę widza',34,'#555555')
blocks=[
 ('Nadawca i kodowanie','Dystrybutor dobiera sceny i muzykę zwiastuna'),
 ('Komunikat i medium','Zwiastun trafia do serwisu społecznościowego'),
 ('Odbiorca i dekodowanie','Widz nadaje znaczenie zapowiedzi filmu'),
 ('Sprzężenie zwrotne','Komentarz widza wraca do dystrybutora'),
]
for i,(title,example) in enumerate(blocks):
    x,y,w,h=400,85+i*200,800,140
    d.rounded_rectangle((x*scale,y*scale,(x+w)*scale,(y+h)*scale),radius=35*scale,fill='#deedf7',outline='black',width=2*scale)
    svg.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="35" fill="#deedf7" stroke="black" stroke-width="2"/>')
    text(340,y+70,str(i+1),52,bold=True)
    text(800,y+46,title,46,bold=True,max_width=750)
    text(800,y+100,example,36,'#555555',max_width=750)
    if i<3:
        y1,y2=y+h+8,y+200-10
        d.line((800*scale,y1*scale,800*scale,(y2-12)*scale),fill='black',width=3*scale)
        d.polygon([(800*scale,y2*scale),(791*scale,(y2-14)*scale),(809*scale,(y2-14)*scale)],fill='black')
        svg.append(f'<path d="M800 {y1} V{y2-12}" fill="none" stroke="black" stroke-width="3"/><path d="M800 {y2} L791 {y2-14} L809 {y2-14} Z" fill="black"/>')
svg.append('</svg>')
(root/'assets/proces-komunikacji-kinowej.svg').write_text('\n'.join(svg),encoding='utf-8')
im.save(root/'assets/proces-komunikacji-kinowej.png',dpi=(508,508))
