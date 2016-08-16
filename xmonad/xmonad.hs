-- 
-- ~/.xmonad/xmonad.hs
--

import XMonad

main = xmonad $ defaultConfig
    { borderWidth        = 4
    , terminal           = "urxvt"
    , normalBorderColor  = "#cccccc"
    , focusedBorderColor = "#d67305" }
