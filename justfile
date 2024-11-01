default:
    @just --list --justfile {{justfile()}}

[group('music')]
dragonforce:
    mpv --no-vid --shuffle https://www.youtube.com/playlist?list=PL5S7HW46qwWJ_eKaMnZ2hnb4j97WFxHFA https://www.youtube.com/playlist?list=PL5S7HW46qwWKHE4V36sOeNpXwd4brRQKt https://www.youtube.com/playlist?list=PL5S7HW46qwWJT1hCZ5REOpxay079MsrVy https://www.youtube.com/playlist?list=PL5S7HW46qwWIKKNOPcQc3fFlw1PWyTXS0 https://www.youtube.com/playlist?list=PL5S7HW46qwWK0uoChbsPw6hZHVzt_y9ep https://www.youtube.com/playlist?list=PL5S7HW46qwWI-XagW5NgNlyCDIcJKRBzl

[group('music')]
cercle *ARGS:
    mpv --no-vid https://www.youtube.com/@Cercle/videos {{ARGS}}

[group('music')]
music-for-programming:
    mpv --no-vid --shuffle https://musicforprogramming.net/rss.xml

[group('music')]
jim-yosef *ARGS:
    mpv --no-vid https://www.youtube.com/@JimYosef {{ARGS}}

# EZUMI - Big Room House
[group('music')]
ezumi:
    mpv --no-vid --shuffle https://www.youtube.com/watch\?list\=PLTNOB0KLGrESd_bSZ82OziNY-QKrhWfYL

# Warnik - Melodic Techno & House Mix (previously EZUMI)
[group('music')]
warnik:
    mpv --no-vid https://www.youtube.com/@djwarnik

[group('music')]
savant *ARGS:
    mpv --no-vid https://www.youtube.com/@SavantOfficialYT {{ARGS}}

# Andrew Rayel - Find Your Harmony
[group('music')]
find-your-harmony *ARGS:
    mpv --no-vid https://soundcloud.com/fyhofficial {{ARGS}}

[group('music')]
jetbrains-adrenaline:
    mpv --no-vid --shuffle https://jb.gg/adrenaline-yt

[group('music')]
jetbrains-80s:
    mpv --no-vid --shuffle https://jb.gg/80s-yt

[group('music')]
jetbrains-jazzbrains:
    mpv --no-vid --shuffle https://jb.gg/jazzbrains-yt

[group('music')]
jetbrains-pure-flow:
    mpv --no-vid --shuffle https://jb.gg/pure-flow-yt

[group('music')]
jetbrains-lofi:
    mpv --no-vid --shuffle https://jb.gg/lofi-yt

