
import Graphics.X11.Xlib
import Graphics.X11.Xlib.Display
import Graphics.X11.Xlib.Screen
import Graphics.X11.Xrandr

main = do
    disp <- openDisplay ":0"
    let
        scr = defaultScreen disp
    w <- rootWindow disp scr
    res <- xrrGetScreenResources disp w
    putStrLn $ show $ fmap xrr_sr_outputs res

