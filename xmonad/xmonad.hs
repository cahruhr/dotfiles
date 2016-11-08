-- 
-- ~/.xmonad/xmonad.hs
-- Carter Hall
--

import XMonad
import XMonad.Layout.NoBorders

-- smartBorders gets rid of borders when there's only one window
-- otherwise this is mostly copied from the xmonad.config example 
layout = smartBorders $ normal ||| twoOnLeft ||| Full
  where
    -- the default tiling algorithm, splits into two panes
    normal  = Tall nmaster delta ratio
    nmaster = 1      -- number of windows in master pane
    delta   = 3/100  -- percent to increment when resizing panes
    ratio   = 1/2    -- default pane ratio

    -- 2 windows on the left
    twoOnLeft  = Tall 2 (3/100) (1/2)
    

myConfig = defaultConfig {
    layoutHook         = layout,

    modMask            = mod4Mask ,
    terminal           = "urxvt",

    focusFollowsMouse  = False,

    borderWidth        = 4,
    normalBorderColor  = "#333355",

    --focusedBorderColor = "#d67305" -- HL orange
    focusedBorderColor = "#1f88ff" -- electric blue
}

main = xmonad myConfig
