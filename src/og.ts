// Erzeugt das Vorschaubild (1200×630), das beim Teilen eines Beitrags angezeigt wird.
import fs from 'node:fs';
import { createRequire } from 'node:module';
import satori from 'satori';
import { Resvg } from '@resvg/resvg-js';
import type { Lang } from './config';
import { t } from './i18n/ui';
import type { Post } from './lib';

const require = createRequire(import.meta.url);
const font = (file: string) => fs.readFileSync(require.resolve(file));
const fonts = [
  { name: 'Space Grotesk', data: font('@fontsource/space-grotesk/files/space-grotesk-latin-700-normal.woff'), weight: 700 as const },
  { name: 'Inter', data: font('@fontsource/inter/files/inter-latin-600-normal.woff'), weight: 600 as const },
];

const CAT_COLORS: Record<string, string> = {
  science: '#3ddcff', history: '#ff8a3d', tech: '#9b6bff', nature: '#b6f23a', body: '#ff3d7f', weird: '#ffd23f', survival: '#3de0b0', food: '#ff5947', language: '#e7a6ff', sport: '#5c95ff',
};

// satori erwartet React-artige Elemente; ein kleiner Helfer spart JSX.
const h = (type: string, style: Record<string, unknown>, children?: unknown) => ({ type, props: { style, children } });

export async function ogImage(post: Post, lang: Lang) {
  const d = post.data;
  const ui = t(lang);
  const titleSize = d.title.length > 70 ? 54 : d.title.length > 45 ? 64 : 76;
  const svg = await satori(
    h('div', { width: '100%', height: '100%', display: 'flex', flexDirection: 'column', justifyContent: 'space-between', padding: 64, background: '#fffaf0', border: '14px solid #141414', fontFamily: 'Inter', color: '#141414' }, [
      h('div', { display: 'flex', justifyContent: 'space-between', alignItems: 'center' }, [
        h('div', { display: 'flex', alignItems: 'center', fontFamily: 'Space Grotesk', fontSize: 52, letterSpacing: -2 }, [
          h('span', {}, 'WTF'),
          h('span', { color: '#ff3d7f' }, 'act'),
          h('span', { marginLeft: 6, padding: '0 12px', borderRadius: 12, background: '#ffd23f', transform: 'rotate(-6deg)' }, '?!'),
        ]),
        h('div', { display: 'flex', padding: '10px 22px', borderRadius: 999, border: '4px solid #141414', background: CAT_COLORS[d.category] ?? '#ffd23f', fontSize: 30 }, ui.categories[d.category]),
      ]),
      h('div', { display: 'flex', fontFamily: 'Space Grotesk', fontSize: titleSize, lineHeight: 1.08, letterSpacing: -1.5 }, d.title),
      h('div', { display: 'flex', fontSize: 30, color: '#5b5b5b' }, ui.tagline),
    ]),
    { width: 1200, height: 630, fonts },
  );
  return new Resvg(svg, { fitTo: { mode: 'width', value: 1200 } }).render().asPng();
}

export const ogPath = (post: Post) => `/og/${post.id}.png`;
