`ytdl-clean`: the youtube-dl cleanup
====

There are two competing projects on GitHub that have different conventions for saving files,

* (dead project) [ytdl-org/youtube-dl](https://github.com/ytdl-org/youtube-dl)
* (surviving) [yt-dlp/yt-dlp](https://github.com/ytdl-org/youtube-dl)

These projects save files differently so you may have

* `foo k123.mp4`
* `foo -k123.mp4`
* `foo [k123].mp4` (newest convetion)

This python script will deduplicate them to the newest convention of `foo
[k123].mp4`. Further in the event it detects the same ID in the directory it's
run, it will purge out files that are older.

Installation
====

```sh
make test
sudo make install

# cd into directory
ytdl-clean
```
