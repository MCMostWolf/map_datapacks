function #lj.core:load
schedule clear lj.core:__second__
schedule function lj.core:__second__ 1s
schedule clear lj.core:__tick__
schedule function lj.core:__tick__ 1t