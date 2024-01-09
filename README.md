## Description

Tuxsay is a fun command-line application that generates talking ASCII cows. It displays a given text inside a speech bubble held by a cow.

```
 ___________________
< Hello les devops! >
 -------------------
   \
    \
        .--.
       |o_o |
       |:_/ |
      //   \ \
     (|     | )
    /'\_   _/`\
    \___)=(___/

```

## Usage
```
docker pull chouvang/matuxpy
docker run --rm -it <container_name> <your_text>
```

### build image
- docker build --target build -t chouvang/matuxpy:full .
- docker build -t chouvang/matuxpy:small .