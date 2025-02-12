# wallpapers

This repository contains wallpapers for use in rapps.

You can download these wallpapers from the "ReactOS Standard Wallpapers" package in the ReactOS Applications Manager.

| File Name                             | Author                                        | Origin                                                     |
|---------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| Angelus collection                    | Forum user "Angelus" (jedi.knight@wanadoo.es) | https://reactos.org/forum/viewtopic.php?p=50543#p50543     |
| "Angelus RosVista2 4-3 1440x1080.jpg" | See above                                     | See above                                                  |
| "Angelus RosVista2 4-3 1024x768.jpg"  | See above                                     | See above                                                  |
| "Polarlicht 1920px.jpg"               | Public domain                                 | https://jira.reactos.org/browse/CORE-8446 and links inside |
| Grass.jpg                             | See above                                     | See above                                                  |
| Clouds.jpg                            | Andreas Bjerkeholt (harteex@gmail.com)        | https://reactos.org/forum/viewtopic.php?p=17732#p17732     |
| Lake.jpg                              | Andreas Bjerkeholt (harteex@gmail.com)        | https://reactos.org/forum/viewtopic.php?p=17732#p17732     |
| "ReactOS CirclesBlue 1.jpg"           | Forum user "henrytang5247" (Henry Tang)       | https://reactos.org/forum/viewtopic.php?p=109529#p109529   |
| "ReactOS CirclesBlue 2.jpg"           | See above                                     | See above                                                  |
| "ReactOS CirclesGold 1.jpg"           | See above                                     | See above                                                  |
| "ReactOS CirclesGold 2.jpg"           | See above                                     | See above                                                  |
| "ReactOS Hexagons.jpg"                | See above                                     | https://reactos.org/forum/viewtopic.php?p=109866#p109866   |
| "ReactOS Mizu.png"                    | Forum user "Foxlet" (foxlet@furcode.co)       | https://jira.reactos.org/browse/CORE-15783                 |
| "ReactOS Mizu 4x3.png"                | See above                                     | See above                                                  |
| "ReactOS Mizu 16x9 A.png"             | See above                                     | See above                                                  |
| "ReactOS Mizu 16x9 B.png"             | See above                                     | See above                                                  |
| Silhouette collection                 | Jake Collins (polar@ever3st.com)              | https://ever3st.com/Graphics/Loot/                         |

## File size

The file size of one wallpaper file should be smaller than 800 KB. The recommended size is 150 KB or smaller.

## Manage this repository

### Who is the wallpaper manager?

- Current wallpaper manager: https://reactos.com/katahiromz

### The job of the wallpaper manager

If any changes are made to the `wallpapers` repository, then the wallpaper manager has to update `roswallp.txt` in `reactos/rapps-db`, for downloading "ReactOS Standard Wallpapers" package (`roswallp`), as follows:

1. Hold a poll or create a pull request before making any significant changes to the `wallpapers` repository.
2. Update the `wallpapers` repository.
3. Run `./make-zip.sh` on the latest `wallpapers` local repository.
4. The file `wallpapers.zip` will be generated.
5. Release the new `wallpapers.zip` on the `reactos/wallpapers` `Releases` page ( https://github.com/reactos/wallpapers/releases ) with a new version tag (`v???`).
6. Update the data file `roswallp.txt` on `reactos/rapps-db` by comparing it with this repository's [`roswallp-sample.txt`](roswallp-sample.txt) (See `TODO:` parts).
