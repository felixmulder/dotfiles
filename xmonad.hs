import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.UrgencyHook
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Util.EZConfig

main :: IO ()
main =
  xmonad $
  docks $
  withUrgencyHook NoUrgencyHook $
  ewmh $
  def { terminal = "urxvt"
      , modMask = mod4Mask
      , borderWidth = 3
      , layoutHook  = avoidStruts myLayoutHook
      , focusedBorderColor = "#91429d"
      }
  `additionalKeys` myKeys

myFont = "xft:SpaceMono Nerd Font Mono:" ++ "fontformat=truetype:size=10:antialias=true"
myBrowser = "firefox"

myKeys = [ ((mod4Mask, xK_f), spawn myBrowser)
         , ((mod4Mask, xK_g), spawn "KeeWeb")
         , ((mod4Mask, xK_p), spawn "gmrun")
         , ((mod4Mask, xK_Escape), spawn "/home/felixmulder/.bin/switch_layout.sh")
         , ((mod4Mask .|. shiftMask, xK_l), spawn "/home/felixmulder/.bin/lock.sh")
         ]

myLayoutHook = (avoidStruts myTall) ||| (avoidStruts $ Mirror myTall) ||| Full

myTall = myGaps . mySpacing $ Tall 1 (3/100) (1/2)

mySpacing = spacingRaw False (Border 0 0 0 0) True (Border 0 8 6 6) True

myGaps = gaps [(U, 0)] -- use for polybar later
