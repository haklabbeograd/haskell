
import Graphics.X11.Xlib
import Graphics.X11.Xlib.Display
import Graphics.X11.Xlib.Screen
import Graphics.X11.Xrandr

main = do
    disp <- openDisplay ":0"
    scr = screenOfDisplay disp 0
    w = rootWindowOfScreen scr
    res <- xrrGetScreenResources dpy w
    putStrLn $ show $ fmap xrr_sr_outputs res

