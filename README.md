## Description
Play/Stop a music or a video taken from youtube with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a>.


<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-youtube-player/master/presentation.png" width="500">


## Usage
```
You: Lance une musique youtube
Jarvis: Quel morceau voulez vous jouer ?
You: Eminem Lose It
Javis: Le morceau Eminem Lose It va bientot se lancer.
[Après quelques secondes (le temps du téléchargement de la vidéo), le morceau de musique se lance]

You: Lance une vidéo youtube
Jarvis: Quelle vidéo voulez vous lancer ?
You: Eminem Lose It
Javis: La vidéo Eminem Lose It va bientot se lancer.
[Après quelques secondes (le temps du téléchargement de la vidéo), la vidéo se lance]

You: Arrête la vidéo/musique
Jarvis: Vidéo/Musique arrêtée.
```


## How to install

1) Connect a speaker to the Jack port or to any USB port.

2) Connect a screen.

3) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-youtube-player```

4) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-youtube-player/blob/master/config.sh">configuration file</a> to match your requirements (you can get the card and peripheral with `aplay -l`).

5) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
