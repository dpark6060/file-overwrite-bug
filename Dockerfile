FROM flywheel/core:latest

ENV FLYWHEEL /flywheel/v0
WORKDIR ${FLYWHEEL}

COPY This_File_Is_In_The_Docker.txt ${FLYWHEEL}/This_File_Is_In_The_Docker.txt