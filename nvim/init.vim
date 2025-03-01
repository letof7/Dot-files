" Utilise les fonctionnalités de Neovim si disponibles
if has('nvim')
  set termguicolors
endif

" Paramètres de base
set number              " Affiche les numéros de ligne
set relativenumber      " Affiche les numéros de ligne relatifs
set tabstop=4           " Nombre d'espaces pour une tabulation
set shiftwidth=4        " Nombre d'espaces pour l'indentation
set expandtab           " Utilise des espaces au lieu des tabulations
set smartindent         " Indentation intelligente
set autoindent          " Indentation automatique
set cursorline          " Met en surbrillance la ligne actuelle
set wrap                " Active le retour à la ligne automatique
set clipboard=unnamedplus " Utilise le presse-papier du système
set ignorecase          " Recherche insensible à la casse
set smartcase           " Recherche sensible à la casse si la recherche contient des majuscules

" Apparence
set background=dark     " Conçu pour les schémas de couleurs sombres
colorscheme industry    " Change le schéma de couleurs (tu peux en choisir un autre)

" Gestion des sauvegardes
set backup              " Active les sauvegardes
set backupdir=~/.local/share/nvim/backup// " Répertoire de sauvegarde
set undofile            " Active l'historique des modifications
set undodir=~/.local/share/nvim/undo// " Répertoire de l'historique des modifications

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Gestionnaire de plugins
Plug 'junegunn/vim-plug'

" Plugins recommandés
Plug 'tpope/vim-sensible'           " Paramètres de base sensés
Plug 'scrooloose/nerdtree'          " Navigateur de fichiers
Plug 'itchyny/lightline.vim'        " Barre d'état légère
Plug 'airblade/vim-gitgutter'       " Affiche les modifications Git
Plug 'junegunn/fzf.vim'             " Interface de fuzzy find
Plug 'junegunn/goyo.vim'            " Mode de concentration
Plug 'AbdelrahmanDwedar/awesome-nvim-colorschemes'

call plug#end()

" Mappings pratiques
nnoremap <C-n> :NERDTreeToggle<CR>  " Ctrl+n pour ouvrir/fermer NERDTree
nnoremap <C-p> :Files<CR>           " Ctrl+p pour fuzzy find
nnoremap <C-s> :w<CR>               " Ctrl+s pour sauvegarder
inoremap jk <Esc>                   " jk pour sortir du mode insertion
