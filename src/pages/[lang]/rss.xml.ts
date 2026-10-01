import rss from '@astrojs/rss';
import type { APIContext } from 'astro';
import { LANGS, SITE, type Lang } from '../../config';
import { t } from '../../i18n/ui';
import { postsFor, postUrl } from '../../lib';

export function getStaticPaths() {
  return LANGS.map((lang) => ({ params: { lang } }));
}

export async function GET(ctx: APIContext) {
  const lang = ctx.params.lang as Lang;
  const posts = await postsFor(lang);
  return rss({
    title: SITE.name,
    description: t(lang).tagline,
    site: ctx.site!,
    items: posts.map((p) => ({ title: p.data.title, description: p.data.teaser, pubDate: p.data.date, link: postUrl(p) })),
  });
}
