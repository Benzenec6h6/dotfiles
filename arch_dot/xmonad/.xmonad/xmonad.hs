-- ~/.xmonad/xmonad.hs
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Util.Run (spawnPipe)
import System.IO (hPutStrLn)

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ def
        { terminal           = "alacritty"
        , modMask            = mod4Mask
        , borderWidth        = 2
        , focusedBorderColor = "#268bd2"
        , normalBorderColor  = "#dddddd"
        , logHook            = dynamicLogWithPP xmobarPP
                                { ppOutput = hPutStrLn xmproc}
        }
        `additionalKeysP`
        [ ("M-S-r", spawn "xmonad --recompile; xmonad --restart")
        , ("M-p", spawn "dmenu_run")
        ]

-- 自前で shorten を定義
shorten :: Int -> String -> String
shorten n xs = if length xs > n then take n xs ++ "..." else xs
