# Kiku

`kiku` is a very simple tool that play a sound when a command is finished.

The sound of notification is played by `mpg123` command and is taken frome [here](https://soundbible.com/1424-Air-Plane-Ding.html).

## Installation

*These instructions need to be launched as root.*

```bash
mkdir /usr/local/share/kiku
cp notif.mp3 /usr/local/share/kiku
cp main.sh /usr/local/share/kiku
```

*These instructions need to be launched as a normal user.*

```bash
KIKU_SOUND=/usr/local/share/kiku/notif.mp3
echo "KIKU_SOUND=$KIKU_SOUND" >> ~/.bashrc
alias kiku='source /usr/local/share/kiku/main.sh'
echo "alias kiku='source /usr/local/share/kiku/main.sh'" >> ~/.bashrc
```

You can now use `kiku` command. Try with `sleep 3`. To stop it, type `stop`.

## Uninstallation

*These instructions need to be launched as root.*

```bash
rm -rf /usr/local/share/kiku
```

*These instructions need to be launched as a normal user.*

```bash
sed -i '/KIKU_SOUND/d' ~/.bashrc
sed -i '/alias kiku/d' ~/.bashrc
```