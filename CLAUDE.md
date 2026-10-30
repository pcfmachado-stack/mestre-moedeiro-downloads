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
- `stack.yml` é histórico; a configuração real está no Portainer.
