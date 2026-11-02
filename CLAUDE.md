# Mestre Moedeiro — Downloads (servidor público)

Documentação central e regras do projeto: repositório
`pcfmachado-stack/mestre-moedeiro-desktop` → `CLAUDE.md` e `docs/`
(especialmente `docs/CONTRATOS.md`). Leia antes de alterar.

- Papel: DISTRIBUI. Nginx serve a página (`site/`, embutida na imagem) e, do
  volume compartilhado em `/data` (somente leitura), `/versao.json`,
  `/arquivos/`, `/comunicacao/` e `/termos/`. Quem grava no volume é o Uploads.
- `site/versao.json` deste repositório é LEGADO; o endereço público lê o volume.
- Textos da página devem acompanhar o aplicativo (ativação por WhatsApp desde a
  4.1.8; orientação sobre o aviso do Windows/Chrome).
- Imagem: a cada push no `main`, tags `<versão>` e `sha-<commit>`; em PRs o
  workflow só valida. Mudou a página? Atualize o serviço `mm-downloads-web`.
- Domínios (Traefik, 01/11/2026): `downloads.mundonumista.com.br` (gravado no Desktop 4.1.15 — nunca
  remover), `mestremoedeiro.com.br` e `www.mestremoedeiro.com.br` (página pública do produto).
- `stack.yml` espelha o Portainer em 01/11/2026 (sem segredos); a configuração real está no Portainer.
- Home do projeto (02/11/2026): `site/inicio.html`, aberta em `/` só nos domínios mestremoedeiro.com.br e www
  (`map $host` no nginx.conf). `downloads.mundonumista.com.br/` continua sendo a página do Windows (`index.html`).
