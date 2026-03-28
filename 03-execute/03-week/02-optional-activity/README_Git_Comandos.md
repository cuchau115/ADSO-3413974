# 📚 Guía Completa de Git y GitHub (Terminal)

Manual práctico para **principiantes e intermedios** que explica los
comandos más importantes de Git y cómo usarlos con GitHub.

------------------------------------------------------------------------

# 📑 Tabla de Contenido

1.  [Introducción a Git](#introducción-a-git)
2.  [Cómo funciona Git](#cómo-funciona-git)
3.  [Configuración Inicial](#configuración-inicial)
4.  [Crear o Clonar Repositorios](#crear-o-clonar-repositorios)
5.  [Gestión de Cambios](#gestión-de-cambios)
6.  [Trabajo con Ramas](#trabajo-con-ramas)
7.  [Trabajo con GitHub (Repositorios
    Remotos)](#trabajo-con-github-repositorios-remotos)
8.  [Historial y revisión de cambios](#historial-y-revisión-de-cambios)
9.  [Comandos avanzados](#comandos-avanzados)
10. [Workflow completo paso a paso](#workflow-completo-paso-a-paso)
11. [Cheat Sheet rápida](#cheat-sheet-rápida)
12. [Buenas prácticas](#buenas-prácticas)

------------------------------------------------------------------------

# Introducción a Git

Git es un **sistema de control de versiones** que permite:

-   Guardar versiones de un proyecto
-   Trabajar en equipo
-   Volver a versiones anteriores
-   Controlar cambios en archivos

GitHub es una plataforma que permite **guardar repositorios Git en
internet**.

------------------------------------------------------------------------

# Cómo funciona Git

Flujo básico de trabajo:

    Working Directory
          ↓
    git add
          ↓
    Staging Area
          ↓
    git commit
          ↓
    Local Repository
          ↓
    git push
          ↓
    GitHub Repository

------------------------------------------------------------------------

# Configuración Inicial

## git config

Configura tu identidad en Git.

### Sintaxis

``` bash
git config --global user.name "Tu Nombre"
git config --global user.email "correo@email.com"
```

### Ejemplo

``` bash
git config --global user.name "Carlos Lopez"
git config --global user.email "carlos@email.com"
```

Explicación: Git usará estos datos en cada commit.

------------------------------------------------------------------------

# Crear o Clonar Repositorios

## git init

``` bash
git init
```

Ejemplo:

``` bash
mkdir proyecto-web
cd proyecto-web
git init
```

Crea la carpeta `.git` donde Git guarda el historial.

------------------------------------------------------------------------

## git clone

``` bash
git clone https://github.com/usuario/proyecto.git
```

Descarga el repositorio completo.

------------------------------------------------------------------------

# Gestión de Cambios

## git status

``` bash
git status
```

Permite ver archivos modificados o pendientes.

------------------------------------------------------------------------

## git add

``` bash
git add archivo
```

Ejemplo:

``` bash
git add index.html
```

Agregar todos los archivos:

``` bash
git add .
```

------------------------------------------------------------------------

## git commit

``` bash
git commit -m "mensaje"
```

Ejemplo:

``` bash
git commit -m "Se agrega página principal"
```

------------------------------------------------------------------------

## git diff

``` bash
git diff
```

Ejemplo:

``` bash
git diff index.html
```

------------------------------------------------------------------------

## git rm

``` bash
git rm archivo
```

Ejemplo:

``` bash
git rm prueba.txt
```

------------------------------------------------------------------------

# Trabajo con Ramas

## git branch

``` bash
git branch desarrollo
```

------------------------------------------------------------------------

## git checkout

``` bash
git checkout desarrollo
```

------------------------------------------------------------------------

## git branch -m master main

``` bash
git branch -m master main
```

------------------------------------------------------------------------

## git merge

``` bash
git merge desarrollo
```

------------------------------------------------------------------------

# Trabajo con GitHub (Repositorios Remotos)

## git remote -v

``` bash
git remote -v
```

------------------------------------------------------------------------

## git remote remove origin

``` bash
git remote remove origin
```

------------------------------------------------------------------------

## git push -u origin main

``` bash
git push -u origin main
```

------------------------------------------------------------------------

## git pull

``` bash
git pull origin main
```

------------------------------------------------------------------------

## git fetch

``` bash
git fetch origin
```

------------------------------------------------------------------------

# Historial y revisión de cambios

## git log

``` bash
git log
```

------------------------------------------------------------------------

## git show

``` bash
git show ID_commit
```

------------------------------------------------------------------------

## git blame

``` bash
git blame archivo
```

------------------------------------------------------------------------

# Comandos avanzados

## git stash

``` bash
git stash
```

------------------------------------------------------------------------

## git reset

``` bash
git reset --hard HEAD~1
```

------------------------------------------------------------------------

## git revert

``` bash
git revert ID_commit
```

------------------------------------------------------------------------

## git tag

``` bash
git tag v1.0
```

------------------------------------------------------------------------

## git cherry-pick

``` bash
git cherry-pick ID_commit
```

------------------------------------------------------------------------

## git rebase

``` bash
git rebase main
```

------------------------------------------------------------------------

# Workflow completo paso a paso

``` bash
git init
git add .
git commit -m "primer commit"
git remote add origin https://github.com/usuario/proyecto.git
git push -u origin main
```

------------------------------------------------------------------------

# Cheat Sheet rápida

  Comando      Uso
  ------------ --------------------
  git init     crear repositorio
  git clone    copiar repositorio
  git status   ver estado
  git add      preparar archivos
  git commit   guardar cambios
  git push     subir cambios
  git pull     descargar cambios
  git branch   crear rama
  git merge    combinar ramas
  git log      ver historial

------------------------------------------------------------------------

# Buenas prácticas

✔ Hacer commits pequeños\
✔ Usar mensajes claros\
✔ Crear ramas para nuevas funciones\
✔ Ejecutar `git pull` antes de trabajar\
✔ Revisar `git status` frecuentemente

------------------------------------------------------------------------

# Conclusión

Git permite controlar versiones y colaborar eficientemente en proyectos
de software usando GitHub.
