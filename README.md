## サービス名
# 「I'm a not PERFECT AI」

サービスURL: [I'm a not PERFECT AI](https://kodomogokoro.onrender.com/)
[![Image from Gyazo](https://i.gyazo.com/c06d4b8a18df8c0e69c7b8b49391a6d7.png)](https://gyazo.com/c06d4b8a18df8c0e69c7b8b49391a6d7)

## ■サービス概要
このアプリは生成された画像に対し、一言タイトルをつけて投稿するミニアプリです。
OpenAIが開発した画像生成AI**DALL-E3**によって、画像が生成されます。

## ■ このサービスの作成理由
日々生成AIの進展は凄まじく、AIの言っていることが正しいと思ってしまいがちですが、DALL-E3で生成される画像内の言語は不完全なことが多いです。
**AIは決してPERFECTではない**ということを改めてユーザーに認識してもらいたく、このアプリを作成しました。

## ■ 機能一覧
| 画像生成機能 | 画像投稿機能 |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/05b321e4926b1e036416ee8cc3a13504.gif)](https://gyazo.com/05b321e4926b1e036416ee8cc3a13504) | [![Image from Gyazo](https://i.gyazo.com/8457581ce1b31449f8f80d96966d78d6.gif)](https://gyazo.com/8457581ce1b31449f8f80d96966d78d6) |
| 「画像を生成する」ボタンをクリックすると、open_ai_service.rbのプロンプトに仕込んでいるテイストに沿った画像が出力されます。 | 出力された画像に一言タイトルをつけて投稿可能です。他の方の投稿は投稿一覧から確認できます。|

## ■ 技術スタック
| カテゴリー | 使用技術 |
:----|:---- 
| フロントエンド | Rails 7.1.3.2, TailwindCSS, DaisyUI |
| バックエンド | Rails 7.1.3.2 (Ruby 3.2.2 )  |
| インフラ | Render.com / AmazonS3 |
| DB | PostgreSQL |
| 開発環境 | ローカル環境(rails serverで立ち上げ可能) |
| API | OpenAI API |
