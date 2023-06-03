# kuinc
Shell script to help you compile Kuin code.

> **Warning**
> This repo is for Linux.

## How to use
1. Download [Kuin](https://kuina.ch/kuin/source_code).
2. Decide which directory you want to install kuinc in.
   Make sure that the directory is in $PATH.
3. Execute the commands below. `bin_dir` is the directory to install kuinc(default is ~/bin). `kuin_dir` is your download location of Kuin.
   ```bash
   $ git clone git@github.com:vm-xeck/kuinc
   $ cd kuinc
   $ make BIND=bin_dir KUIND=kuin_dir
   ```
4. Now you can compile your Kuin code easily. example:
   ```bash
   $ kuinc hoge.kn -o hoge
   ```
