FROM rundeck/rundeck:SNAPSHOT

LABEL AUTHOR noe.a.gonzalez@gmail.com

COPY --chown=rundeck:root ./libext ./libext
