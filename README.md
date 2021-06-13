# Voxel Planes Datapack
minecraftに航空機を追加するデータパックです。
![](https://user-images.githubusercontent.com/35622683/101279036-bef8d280-3802-11eb-9e70-bc5ae2369657.png)

## 対応バージョン
minecraft 1.16(~v0.2.0)
minecraft 1.17(v0.3.2~)

## インストール方法
1. [release](https://github.com/uran247/voxel-planes-datapack/releases)よりvoxel-planesとvoxel-planes-resourcepackをDL
1. voxel-planes-resourcepackをリソースパックフォルダに配置し適用
1. detapackフォルダにDLしたdetapackを配置
1. minecraft内で`/reload`実行

## 使い方
### 航空機のクラフト
- 作業台で航空機および武器、レンチをクラフトできます。レシピは[wiki](https://github.com/uran247/voxel-planes-datapack/wiki)に記載

### 航空機の召喚/アイテムへ戻す
- 航空機アイテムを持って地面を右クリックすると航空機を召喚できます
- レンチを持ち航空機付近を右クリックするとアイテムに戻すことができます

### 航空機の操作
#### 搭乗
- 召喚した航空機の緑のパーティクル付近を右クリックすることで乗ることができます

#### 操作方法
- 搭乗中以下の操作をできます
    - マウス操作：向いた方向へ旋回
    - アイテムスロット9選択：スロットル上げ
    - アイテムスロット8選択：マウス操作ロック
    - アイテムスロット6選択：スロットル下げ
    - オフハンド切り替え：選択武装切り替え
    - 右クリック：選択武装使用

#### 離着陸
- 離着陸は以下の操作でやります
    - 離陸：スロットルを上げると航空機が加速します。一定速度以上になると離陸します。
    - 着陸：飛行中スロットルを0%にし、速度が一定以下(文字色が青になる速度)で地面に接触すると着陸します。

#### 武器の使用/切り替え
- 右クリックで武器を使用できます
- 弾切れになった武器は一定時間後リロードされます
- 爆弾による地形破壊はありません
- 飛行機のインベントリに武器アイテムを入れることで、使用できる武器を切り替えできます
    - 使える武器は飛行機によって異なります。

## 航空機の詳細/レシピ
wiki参照(https://github.com/uran247/voxel-planes-datapack/wiki)

## 連絡先
twitter：[@uran2471](https://twitter.com/uran2471)
