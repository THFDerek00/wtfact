import type { APIRoute } from 'astro';
import { LANGS } from '../../../config';
import { postsFor, langOf, slugOf, type Post } from '../../../lib';
import { ogImage } from '../../../og';

export async function getStaticPaths() {
  const all = (await Promise.all(LANGS.map(postsFor))).flat();
  return all.map((post) => ({ params: { lang: langOf(post), slug: slugOf(post) }, props: { post } }));
}

export const GET: APIRoute = async ({ props }) => {
  const post = props.post as Post;
  const png = await ogImage(post, langOf(post));
  return new Response(png, { headers: { 'Content-Type': 'image/png' } });
};
