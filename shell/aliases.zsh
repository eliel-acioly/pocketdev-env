# ==============================
# PocketDev Aliases
# ==============================

# -- PNPM & Next.js --
alias p='pnpm'
alias pi='pnpm install'
alias pd='pnpm dev'
alias pb='pnpm build'
alias px='pnpm dlx'
alias lint='pnpm lint'
alias bd='pnpm dev'
alias bs='pnpm start'

# -- Prisma --
alias pr='pnpm prisma'
alias prg='pnpm prisma generate'
alias prm='pnpm prisma migrate dev'
alias prs='pnpm prisma studio'

# -- Git --
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gl='git pull'
alias gcl='git clone'
alias gundo='git reset --soft HEAD~1'

# -- PostgreSQL --
alias pgstart='sudo service postgresql start'
alias pgstop='sudo service postgresql stop'
alias psqlv='psql -U postgres'

# -- Navegação --
alias ..='cd ..'
alias ...='cd ../..'
alias home='cd ~'

# -- Projetos (exemplos, podem variar) --
alias be='cd ~/projects/backend'
alias fe='cd ~/projects/frontend'

# -- Sistema & Utilitários --
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias lt='lsd --tree'
alias c='clear'
alias ex='exit'
alias zshrc='nano ~/.zshrc'
alias reload='source ~/.zshrc'
