#xinput by default will disable the touchpad while a key is pressed.
# to disable this, run `xinput` to list the inputs. find the name of your
# touchpad (mine is 'Microsoft Surface Keyboard Touchpad').
# 
# Disable the setting 'Disable While Typing Enabled'
# `xinput --set-prop 'Microsoft Surface Keyboard Touchpad' \
#    'libinput Disable While Typing Enabled' 0` 
#
# Enable the setting 'Disable While Typing Enabled'
# `xinput --set-prop 'Microsoft Surface Keyboard Touchpad' \
#    'libinput Disable While Typing Enabled' 1` 
#
# If you save this script as `gaming`, then you can enable
# "gaming" mode (touchpad will be enabled while typing) by calling
# `gaming enable` or `gaming e`. To disable gaming mode call
# `gaming disable` or `gaming d`.
#
# Its a bit confusing because of the triple negative condition ;)

TOUCHPAD="Virtual core pointer"
SETTING="libinput Disable While Typing Enabled"


enable() {
    xinput --set-prop "${TOUCHPAD}" "${SETTING}" 1
    echo "Touchpad disabled while typing"
}


disable() {
    xinput --set-prop "${TOUCHPAD}" "${SETTING}" 0
    echo "Touchpad enabled while typing"
}


case "$1" in
    enable|e)
        disable
        ;;

    disable|d)
        enable
        ;;
esac
