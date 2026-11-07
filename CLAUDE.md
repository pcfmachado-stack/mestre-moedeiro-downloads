# Mestre Moedeiro — Downloads (servidor público)

Documentação central e regras do projeto: repositório
`pcfmachado-stack/mestre-moedeiro-web` → `CLAUDE.md` e `docs/` (desde 05/11/2026, D52: o Desktop foi
descontinuado e o repositório `mestre-moedeiro-desktop` está arquivado)
(especialmente `docs/CONTRATOS.md`). Leia antes de alterar.

- Papel: DISTRIBUI. Nginx serve as páginas públicas (`site/`, embutidas na imagem) e, do
  volume compartilhado em `/data` (somente leitura), `/comunicacao/` e `/termos/` — lidos pela web, pela
  API de licenciamento e pela página do curso em `https://mestremoedeiro.com.br`. Quem grava no volume é o Uploads.
- D52 (05/11/2026, Desktop descontinuado): sem página do programa para Windows, sem `/arquivos/` e sem
  `/versao.json`. `downloads.mundonumista.com.br/` redireciona (301) para `mestremoedeiro.com.br`; o domínio
  pode sair do Traefik/DNS depois que web, licenciamento e Uploads lerem `mestremoedeiro.com.br`.
- Imagem: a cada push no `main`, tags `<versão>` e `sha-<commit completo>`; em PRs o
  workflow só valida. Mudou a página? Atualize o serviço `mm-downloads-web`.
- Domínios (Traefik): `mestremoedeiro.com.br` e `www.mestremoedeiro.com.br` (página pública do produto),
  `cursos.mundonumista.com.br` (curso) e, até ser desligado, `downloads.mundonumista.com.br` (só redireciona).
- `stack.yml` espelha o Portainer em 01/11/2026 (sem segredos); a configuração real está no Portainer.
- Home do projeto (02/11/2026): `site/inicio.html`, aberta em `/` (`map $host` no nginx.conf).
- Curso (02/11/2026): `site/curso.html` em `cursos.mundonumista.com.br` (mesmo `map $host`; Traefik e DNS com o
  nome novo). Data do lançamento: atributo `data-lancamento` no `<body>`; redes vêm de `/comunicacao/redes_sociais.json`.
- QR das bandeiras (D48, 04/11/2026): `/e/<id>` redireciona (302) para `app.mestremoedeiro.com.br/e/<id>`.
  O endereço está impresso nas bandeiras — nunca remover. Idem `/c/<bt>` (Cédulas do Brasil, D51, 05/11/2026).
