(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; Themes to download
(unless (package-installed-p 'nimbus-theme)
  (package-refresh-contents)
  (package-install 'nimbus-theme))
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))
(unless (package-installed-p 'oceanic-theme)
  (package-refresh-contents)
  (package-install 'oceanic-theme))

; Packages to download
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

; Give us back Ctrl+U for vim emulation
(setq evil-want-C-u-scroll t)
; Use evil mode
(require 'evil)
(evil-mode t)

; Appearance
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


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
    (oceanic-theme nimbus-theme spacemacs-theme which-key use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
