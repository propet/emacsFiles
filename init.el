;; Setup package.el
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)


;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;; Themes
(use-package nimbus-theme
  :ensure t
  :defer t)

(use-package spacemacs-theme
  :ensure t
  :defer t)

(use-package oceanic-theme
  :ensure t
  :defer t)


;; Which-key (shows possible key combinations after pressing C-x)
(use-package which-key
  :ensure t
  :init
  (which-key-mode))


;; Load evil and plugins
(use-package evil  ;; emulate vim text editing
  :ensure t ;; install the evil package if not installed
  :init ;; tweak evil's configuration before loading it
  (setq evil-want-C-u-scroll t)
  :config ;; tweak evil after loading it
  (evil-mode 1)
  ;; example how to map a command in normal mode (called 'normal state' in evil)
  (define-key evil-normal-state-map (kbd ", w") 'evil-window-vsplit))

(use-package evil-surround  ;; create/delete/change brakets/parenthesis/tags
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary  ;; comment chunks or lines of text (gc, gcc)
  :ensure t
  :init
  (evil-commentary-mode))

(use-package nlinum-relative  ;; set hybrid line numbering
  :ensure t
  :config
  ;; something else you want
  (nlinum-relative-setup-evil)
  (add-hook 'prog-mode-hook 'nlinum-relative-mode))

;; Appearance
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Behaviour
(electric-pair-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" "876fe28b6263ef36feeff1fa10db90a08ed899d1c6505b1d040d556db8ed0d2d" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(package-selected-packages
   (quote
    (nlinum-relative evil-commentary evil-surround oceanic-theme nimbus-theme spacemacs-theme which-key use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
