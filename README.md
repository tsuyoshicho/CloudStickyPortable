CloudSticky (old EvernoteStickyPortable)
========================================

CloudSticky is Evernote Sticky tool. and portable installer packaging (PortableApps.com style)
CloudSticky PortableはEvernoteを利用するCloudStickyをポータブル化したものです。

Status
------

Rename repository URL

Licence
-------

<pre>
Original and Launcher/Installer
GNU General Public License v3 (GPLv3) 
</pre>

<pre>
Task tray icon(icon.png) is modified under the following license.

Author：　barrymieny(http://barrymieny.deviantart.com/)
Icon Set:　Isabi4Icons
Licence：　CC Attribution-NonCommercial-ShareAlike 3.0 
</pre>

現在のターゲットバージョン
--------------------------
* CloudSticky 1.0

手順
----
0. PortableAppsからInstaller,Launcher,NSIS,jPortableが必要になるので、セットアップしておく。
1. 各ランチャ作成環境をルートとして、PortableApps Launcherでランチャを作成。
2. リリース環境に実行ファイル両方をコピー。(一度作成しておけば更新されないかぎりはそのままでよい)
3. ファイルをCloudStickyに配置、データはDefaultDataに入れる(icon,CloudSticky.ini)
4. help.htmlの記述を更新。ツールのReadmeから転写。
5. リリース環境をルートとして、PortableApps Installerでインストーラを作成。
6. インストーラがルートにできる。

ディレクトリ構成
----------------

<pre>
(root)
├─Launcher Environment
│  └─App
│      ├─AppInfo
│      │  └─Launcher
│      ├─CloudSticky
│      └─DefaultData
├─note
│  └─Evernote Sticky Portable Setup_files
└─Release Environment
    └─App
        ├─AppInfo
        │  └─Launcher
        ├─CloudSticky
        │  ├─CloudStickySwitch_lib
        │  └─CloudSticky_lib
        └─DefaultData
            └─Sticky
</pre>

補足情報
--------
* Dataディレクトリに配置される設定は自分の設定を記載する必要がある(現在の実装では一度アプリからセットアップすればOKのはず)

オリジナル作者様URL
-------------------
* [URL SF.jp](http://sourceforge.jp/projects/evernote-sticky/)

リポジトリ公開者によるバイナリ公開URL(あまり推奨しません)
---------------------------------------------------------
短縮URL http://goo.gl/qjmYx ( https://drive.google.com/folderview?id=0B0YTfSPDI7f6VUxfS25TZWFVYTQ&usp=sharing )






