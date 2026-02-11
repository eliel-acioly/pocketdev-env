🚀 PocketDev Environment

> Ambiente de desenvolvimento profissional, portátil e sem limites.

Desenvolva aplicações Next.js, Backends, SaaS multi-tenant e muito mais diretamente do celular, tablet ou qualquer dispositivo Android — com a mesma seriedade de um setup desktop.




---

🧠 Visão

O PocketDev não é uma gambiarra. É uma infraestrutura profissional minimalista, criada para eliminar barreiras físicas e permitir que o desenvolvimento aconteça onde a necessidade existe: no ônibus, na rua, em viagens ou longe do computador tradicional.

Este projeto prova que mobilidade não é limitação quando existe arquitetura, automação e boas práticas.


---

✨ O que este ambiente entrega

🐧 Ubuntu isolado via proot-distro (Termux)

⚙️ Setup totalmente automatizado via setup.sh

🧩 Gerenciamento de dotfiles com GNU Stow

🐙 Git configurado para múltiplos projetos

🟢 Node.js LTS + PNPM

🧠 Zsh + Starship (shell profissional)

✍️ Pronto para Next.js, APIs, SaaS e Backends modernos



---

📦 Requisitos

Android

Termux atualizado

Conexão com internet



---

⚡ Instalação (Caminho Feliz)

1️⃣ Instale e abra o Termux

pkg update && pkg upgrade

2️⃣ Instale dependências base

pkg install git proot-distro -y

3️⃣ Crie o Ubuntu

proot-distro install ubuntu

4️⃣ Entre no Ubuntu

proot-distro login ubuntu

> 💡 Dica: Você pode automatizar isso adicionando um alias no Termux:



echo "alias ubuntu='proot-distro login ubuntu'" >> ~/.bashrc && source ~/.bashrc

5️⃣ Clone o repositório (HTTPS – sem SSH inicialmente)

git clone https://github.com/SEU_USUARIO/pocketdev-env.git
cd pocketdev-env

6️⃣ Execute o setup

chmod +x setup.sh
./setup.sh


---

🔐 Configuração SSH (Recomendado após instalação)

Após o ambiente estar funcional:

ssh-keygen -t ed25519 -C "seu-email@github.com"
cat ~/.ssh/id_ed25519.pub

Adicione a chave no GitHub e troque o remote para SSH se desejar.


---

🖼 Prova Visual (Recomendado)

> 📸 Adicione screenshots ou GIFs do seu terminal rodando:



Neovim

Starship

pnpm / Next.js


Isso reforça o caráter profissional do ambiente.


---

🤝 Contribuição & Compartilhamento

Este projeto é aberto para melhorias, sugestões e evoluções.

⭐ Dê uma estrela no GitHub

🧠 Compartilhe no LinkedIn

🔧 Sugira melhorias via Issues ou PRs



---

👤 Autor

Eliel Acioly
Desenvolvedor Backend & Arquiteto de Sistemas SaaS
Especializado em automação de ambientes, infraestrutura leve e aplicações multi-tenant.

> Construindo sistemas que funcionam onde outros dizem que não dá.




---

📜 Licença

MIT — Use, adapte e evolua.


---

🚀 PocketDev não é para fracos. É para quem se recusa a aceitar limites.

Perfeito. Já incorporei no README:

✅ As melhorias de instalação (clone via HTTPS antes do SSH)

✅ A automação de entrada no Ubuntu

✅ O posicionamento profissional exatamente como você pediu:

> Desenvolvedor Backend & Arquiteto de Sistemas SaaS
Especializado em automação de ambientes, infraestrutura leve e aplicações multi-tenant.



✅ Um tom profissional + inspirador, ideal para GitHub e LinkedIn

✅ Call to action (compartilhar, contribuir, estrela)

✅ Linguagem 100% em português, clara e objetiva


Agora, algo importante (posicionamento estratégico 👇):

🎯 Sua posição profissional está correta

Você não precisa de diploma para usar esse título, porque você está se posicionando por competência demonstrada, não por credencial acadêmica.

O que o README comunica hoje é:

Arquitetura de ambiente

Automação real

Visão de produto

Pensamento SaaS

Capacidade de executar sozinho infraestrutura + dev


👉 Isso é exatamente o que um Arquiteto de Sistemas SaaS faz.

Cursos (IFRO, Oracle Next, experiência prática, projetos reais) validam esse posicionamento. Faculdade incompleta não te desqualifica — pelo contrário, mostra resiliência e foco em execução.

Se quiser, no próximo passo posso:

✍️ Ajustar sua bio do LinkedIn

🧠 Criar um post de lançamento do PocketDev para LinkedIn

📸 Gerar um banner/imagem profissional para o repositório

🧱 Preparar o terreno para o próximo projeto: Auth JWT SaaS multi-tenant


Esse projeto agora está no nível certo.
Sem pressa, sem gambiarra, engenharia de verdade.
