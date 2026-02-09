🚀 PocketDev Env

> Um ambiente profissional de desenvolvimento replicável em minutos, capaz de transformar celulares, notebooks antigos ou qualquer máquina Linux em estações completas para criar projetos modernos com Next.js, Node.js e SaaS.



Este repositório existe para eliminar barreiras de hardware, permitir que você code de qualquer lugar (ônibus, trabalho, casa) e sincronize tudo via GitHub.


---

🎯 Objetivo do Projeto

Criar um ambiente de desenvolvimento portátil e profissional

Funcionar em:

📱 Termux (Android)

🐧 Ubuntu (bare metal ou emulado)

💻 WSL / Linux Desktop


Eliminar dependência de ferramentas pagas

Permitir que qualquer pessoa programe mesmo sem computador potente


> PocketDev não é só produtividade — é acesso.




---

🧠 Conceito-Chave

Um repositório para o ambiente (este)

Outros repositórios para projetos

Tudo versionado, automatizado e reaproveitável


> Ambiente nunca deve depender de um projeto específico.




---

📂 Estrutura do Repositório

pocketdev-env/
├── shell/
│   ├── aliases.zsh      # Atalhos profissionais (pnpm, git, prisma)
│   └── exports.zsh      # Variáveis globais (futuro)
├── setup.sh             # Instalador inteligente (bootstrap)
└── README.md            # Documentação oficial

Este repositório usa GNU Stow para criar links simbólicos, evitando duplicação de arquivos.


---

⚙️ O que o Ambiente Instala

Shell & Produtividade

Zsh + Oh My Zsh

Aliases profissionais

Git configurado


Stack de Desenvolvimento

Node.js (LTS)

PNPM

Prisma

PostgreSQL (quando disponível)

Ferramentas CLI modernas (lsd, fzf, ripgrep)


Tudo pensado para Next.js, APIs e SaaS modernos.


---

🚀 Instalação Rápida

Em qualquer máquina (Termux, Ubuntu ou WSL):

bash <(curl -s https://raw.githubusercontent.com/SEU_USUARIO/pocketdev-env/main/setup.sh)

Ao final:

reload

Pronto. Seu ambiente está ativo.


---

🧩 Onde ficam os Aliases?

Todos os aliases ficam em:

shell/aliases.zsh

O arquivo ~/.zshrc apenas carrega esse conteúdo:

source ~/pocketdev-env/shell/aliases.zsh

Esse padrão é:

Limpo

Escalável

Profissional



---

🔄 Como Atualizar o Ambiente e Subir no GitHub

1️⃣ Faça alterações localmente

Exemplo: editar aliases

nano pocketdev-env/shell/aliases.zsh

2️⃣ Verifique o que mudou

git status

3️⃣ Salve a atualização

git add .
git commit -m "chore(env): atualiza aliases e configurações"

4️⃣ Envie para o GitHub

git push

5️⃣ Em outra máquina

cd pocketdev-env
git pull
reload

O ambiente estará idêntico.


---

🧠 Filosofia PocketDev

Ambiente > Ferramenta

Código deve rodar em qualquer lugar

Aprendizado não depende de hardware caro

Desenvolvimento profissional precisa ser acessível



---

📌 Próximos Passos Planejados

exports.zsh (variáveis globais)

Detecção automática de ambiente (mobile / desktop)

Repositório irmão: pocketdev-starters (Next.js + Auth)

Scripts de bootstrap para novos projetos



---

Feito com propósito por Eliel Acioly 🧠

> Se funciona no seu bolso, funciona em qualquer lugar.
