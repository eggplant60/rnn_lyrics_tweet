# lyrics_tweet

歌詞やツイートを LSTM-RNN で生成します。


## インストール

- chainer (v2.0.2で動作確認)
- juman++ (http://nlp.ist.i.kyoto-u.ac.jp/index.php?JUMAN++)
- その他、pipで入れるライブラリ

※ juman は docker コンテナ上でサーバとして動かします。


## 使い方

1. 歌詞の取得
   `./01_scrape_lyrics.py | tee data/lyrics.txt`

   ※ ツイートを使う場合は別途ダウンロードして下さい。

2. 取得したテキストの分かち書き
   `./start_juman_server.sh`
   `./02_get_train_data.sh data/lyrics.txt > train.txt`

3. 学習の実行
   `./03_train_ptb.sh -t train.txt -m model.npz`

4. 生成
   `./04_gentxt.py -t train.txt -m model.npz -p "<最初の単語>"`
   