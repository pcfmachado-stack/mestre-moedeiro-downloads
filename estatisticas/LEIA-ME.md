# Estatísticas de visitas — Umami (D54, 07/11/2026)

Contagem de visitas das páginas públicas, começando por `cursos.mundonumista.com.br`. Roda no nosso
Portainer (Hetzner), **sem cookies e sem dado pessoal**: o Umami não grava IP nem identifica o visitante,
por isso dispensa aviso de cookies. Não tem mapa de calor (isso seria o Microsoft Clarity, não adotado).

Painel: `https://estatisticas.mundonumista.com.br` (DNS: registro A para o IP do Hetzner).

## Implantar (responsável)
1. DNS: criar `estatisticas.mundonumista.com.br` apontando para o servidor.
2. Portainer › Stacks › Add stack, nome `estatisticas`, colar `stack.yml` e, em **Environment variables**:
   `UMAMI_DB_SENHA` e `UMAMI_APP_SECRET` (gerar; guardar no LastPass). Deploy.
3. Abrir o painel e entrar com **admin / umami** — **trocar a senha na hora** (Settings › Profile) e
   guardar no LastPass.
4. Settings › Websites › **Add website**: nome `Curso Mundo Numista`, domínio `cursos.mundonumista.com.br`.
   Copiar o **Website ID** (formato `xxxxxxxx-xxxx-…`) e passar ao Claude: ele não é segredo, vai na página.

## Na página (Claude)
`<script defer src="https://estatisticas.mundonumista.com.br/mm.js" data-website-id="<ID>"></script>` e
`data-umami-event="..."` nos botões (ex.: assistir à Aula 01), que aparecem em **Events** no painel.

## Cuidados
- Volume `estatisticas_umami_db`: não apagar (é todo o histórico).
- Atualizar o Umami: Services › `estatisticas_umami` › Update com "Re-pull image" (as migrações rodam sozinhas).
