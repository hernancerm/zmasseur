# zmasseur

Massage files using Zsh. "Massaging" means processing annotations.

Annotations are meant to **modify** a file and are lines beginning with: `#@`.

## Usage

The file to be massaged is "main.zsh":

`main.zsh`

```sh
#@shebang
#@executable

#@expand ./functions.zsh

smile
````

The file "main.zsh" uses the function from this file:

`functions.zsh`

```sh
function smile {
  echo 'c:'
}
```

 Massage "main.zsh" into the new file "smile" with: `zmasseur main.zsh smile`


`smile`

```sh
#!/bin/zsh -f

function smile {
  echo 'c:'
}

smile
```
