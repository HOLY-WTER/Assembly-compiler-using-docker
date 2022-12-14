FROM ubuntu:22.04
RUN apt-get -y update
RUN apt-get install -y nasm binutils vim
COPY . /usr/src/asm
WORKDIR /usr/src/asm
RUN nasm -f elf64 eiei.asm 
RUN ld eiei.o -o eiei
CMD ["./eiei"]
