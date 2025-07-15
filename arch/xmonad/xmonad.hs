import XMonad
import XMonad.Util.EZConfig (additionalKeys)

main = xmonad $ def
    { modMask = mod4Mask -- SuperキーをModに
    , terminal = "alacritty"
    , borderWidth = 2
    }
    `additionalKeys`
    [ ((mod4Mask, xK_Return), spawn "alacritty")
    , ((mod4Mask, xK_d), spawn "dmenu_run")
    , ((mod4Mask .|. shiftMask, xK_q), io (exitWith ExitSuccess))
    ]
