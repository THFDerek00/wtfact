import { getCollection, type CollectionEntry } from 'astro:content';
import { SITE, type Lang } from './config';

export type Post = CollectionEntry<'posts'>;

export const langOf = (p: Post) => p.id.split('/')[0] as Lang;
export const slugOf = (p: Post) => p.id.split('/').slice(1).join('/');
export const postUrl = (p: Post) => `/${langOf(p)}/${slugOf(p)}/`;

export async function postsFor(lang: Lang) {
  const now = new Date();
  return (await getCollection('posts', (p) => langOf(p) === lang && !p.data.draft && p.data.date <= now)).sort(
    (a, b) => b.data.date.getTime() - a.data.date.getTime(),
  );
}

export async function translationOf(p: Post) {
  const other: Lang = langOf(p) === 'de' ? 'en' : 'de';
  return (await postsFor(other)).find((o) => o.data.translationKey === p.data.translationKey);
}

export const amazonUrl = (lang: Lang, query: string) => {
  const a = SITE.amazon[lang];
  return `https://${a.host}/s?k=${encodeURIComponent(query)}&tag=${a.tag}`;
};

export const readingMinutes = (body = '') => Math.max(1, Math.round(body.split(/\s+/).length / 200));
