# encoding: utf-8
# language: ja
@javascript
@standalone
機能: SignIn - ログイン(standaloneモード)
  背景:
    前提 セッションをクリアする

  シナリオ: ログイン後、ログアウトする
    もし "トップページ" にアクセスする

    ならば "メニュー" に "ログイン" を含むこと

    もし "サブメニューボタン" をクリックする

    ならば "サブメニュー" に "ログアウト" を含まないこと

    もし "ログインボタン" をクリックする

    ならば "ログインダイアログ" が表示されていること

    もし "ログインダイアログの名前" に "1102" を指定する
    かつ "ログインダイアログのログインボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "メッセージ" に "ログインしました" を含むこと
    かつ "メニュー" に "1102" を含むこと

    もし "サブメニューボタン" をクリックする

    ならば "サブメニュー" に "ログアウト" を含むこと

    もし サブメニューの "ログアウトボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "メッセージ" に "ログアウトしました" を含むこと
    かつ "メニュー" に "ログイン" を含むこと
    かつ "メニュー" に "1102" を含まないこと

    もし "サブメニューボタン" をクリックする

    ならば "サブメニュー" に "ログアウト" を含まないこと

  シナリオ: 名前を指定せずにログインボタンを押す
    前提 "トップページ" にアクセスする
    かつ "ログインボタン" をクリックする

    もし "ログインダイアログの名前" に "" を指定する
    かつ "ログインダイアログのログインボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "メッセージ" に "ログインに失敗しました" を含むこと
    かつ "メニュー" に "ログイン" を含むこと

  シナリオ: ログインをやめる
    前提 "トップページ" にアクセスする
    かつ "ログインボタン" をクリックする
    かつ "ログインダイアログの名前" に "1102" を指定する

    もし "ログインダイアログのやめるボタン" をクリックする

    ならば "メッセージ" に "ログインしました" を含まないこと
    かつ "メニュー" に "ログイン" を含むこと

  シナリオ: ログイン後にプログラムを実行する
    前提 "トップページ" にアクセスする
    かつ "ログインボタン" をクリックする
    かつ "ログインダイアログの名前" に "1102" を指定する
    かつ "ログインダイアログのログインボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ
    かつ "Ruby" タブを表示する
    かつ プログラムの名前に "01.rb" を指定する
    かつ テキストエディタに "puts 'Hello, World!'" を入力済みである

    もし "実行ボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "~/1102" ディレクトリに "01.rb" が存在すること
    かつ "~/1102" ディレクトリの "01.rb" の内容が "puts 'Hello, World!'" であること

  シナリオ: ログイン後、リセットする
    前提 "トップページ" にアクセスする
    かつ "ログインボタン" をクリックする
    かつ "ログインダイアログの名前" に "1102" を指定する
    かつ "ログインダイアログのログインボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    もし サブメニューの "リセットボタン" をクリックする

    ならば "メニュー" に "ログイン" を含まないこと
    かつ "メニュー" に "1102" を含むこと

    もし "サブメニューボタン" をクリックする

    ならば "サブメニュー" に "ログアウト" を含むこと