ApplicationRecord.transaction do
  Food.delete_all
  FoodCategory.delete_all
  FoodCountry.delete_all
  Review.delete_all
  User.delete_all

  # FoodCategoryモデル追加（8/11追加）
  FoodCategory.find_or_create_by(id: 1) { |category| category.update(name: 'ラーメン') }
  FoodCategory.find_or_create_by(id: 2) { |category| category.update(name: '焼きそば') }
  FoodCategory.find_or_create_by(id: 3) { |category| category.update(name: 'カレー') }
  FoodCategory.find_or_create_by(id: 4) { |category| category.update(name: 'パスタ') }
  FoodCategory.find_or_create_by(id: 5) { |category| category.update(name: '調味料') }
  FoodCategory.find_or_create_by(id: 6) { |category| category.update(name: 'その他') }

  # FoodCountryモデル追加（8/11追加）
  FoodCountry.find_or_create_by(id: 1) { |category| category.update(name: '韓国') }
  FoodCountry.find_or_create_by(id: 2) { |category| category.update(name: '中国') }
  FoodCountry.find_or_create_by(id: 3) { |category| category.update(name: 'イタリア') }
  FoodCountry.find_or_create_by(id: 4) { |category| category.update(name: 'インド') }

  # Foodモデル登録（8/11追加）
  Food.create(id: 1, name: '辛ラーメン 袋麺', spice_level: '3', price: '212', title: '本場韓国の辛さで人気の高い“うまからっ！”でおなじみ「辛ラーメン」。', body: '厳選した唐辛子の「辛さ」、ブレンドしたオリジナルスパイスと素材の旨み成分がたっぷり溶け込んだ「旨味スープ」、「旨さ」と「辛さ」がマッチした絶妙なおいしさがクセになる「うまからっ！」味です。特殊な方法で作られた楕円形の麺によるなめらかな口当たり、特別に配合した高級麺用の小麦粉を使用したコシのある麺を特徴とした製品です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/01_辛ラーメン_袋麺.jpg')))
  Food.create(id: 2, name: '辛ラーメン キムチ 袋麺', spice_level: '1', price: '212', title: 'しゃきしゃきの白菜キムチのコクと旨みがたっぷり入った、マイルドな辛さの「辛ラーメン」。', body: 'スープと相性がよく、滑らかな口当たりとしなやかなコシをあわせ持った麺、キムチは農心独自の冷凍乾燥(フリーズドライ)製法により、しゃきしゃきした白菜キムチそのものの歯ごたえと味わい。「辛ラーメン」の旨みはそのままに日本人向けに辛みと酸味を抑えた、キムチのさっぱりとした味わいが楽しめます。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/02_辛ラーメン_キムチ_袋麺.jpg')))
  Food.create(id: 3, name: '辛ラーメン ブラック 袋麺', spice_level: '2', price: '262', title: '“特製辛味スープ”と“特製豚骨スープ”のW(ダブル)スープで、コクのあるマイルドな「辛ラーメン」。', body: '濃厚でコクのある“特製豚骨スープ”と厳選した唐辛子にオリジナルスパイスを加えた、“特製辛味スープ”のWスープが味わい深いプレミアムな「辛ラーメン」です。大きめの具材(チンゲンサイ、しいたけ、味付かまぼこ、唐辛子)がスープにさらなる旨味を加えます。もちもち食感の中太麺に濃厚で程よく辛いスープがよく合います。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/03_辛ラーメン_ブラック_袋麺.jpg')))
  Food.create(id: 4, name: '辛ラーメン LIGHT 袋麺', spice_level: '3', price: 'null', title: 'ノンフライ麺でカロリー30％OFF※と低カロリーな健康志向の｢辛ラーメン」。', body: '生麺のようなツルツルとした食感、もちっとしたコシのあるノンフライ麺とあっさりとしながらも野菜のコクと旨みが味わい深い、スッキリとした「うまからっ！」味のスープがよく合います。｢辛ラーメン」に比べ、カロリー30％OFF※のヘルシーな製品です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/04_辛ラーメン_LIGHT_袋麺.jpg')))
  Food.create(id: 5, name: '辛ラーメン焼きそば 袋麺', spice_level: '4', price: '262', title: '辛ラーメン誕生から30年以上の歳月を経て、ついに焼きそばタイプが初登場。', body: '辛ラーメンのクセになる旨辛な味はそのままに、焼きそばタイプに再現。麺は焼きそばに合う、細いながらも、もちもちとした麺を使用。具材の一つ、かまぼこにはロゴである「辛」の文字が入っています。', food_category_id: 2, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/05_辛ラーメン焼きそば_袋麺.png')))
  Food.create(id: 6, name: '辛ラーメン焼きそば チーズ 袋麺', spice_level: '2', price: '262', title: '辛ラーメン焼きそば待望の第2弾。うまからっ！×チーズのクセになる味わい。', body: '人気の「辛ラーメン焼きそば」シリーズから待望の第2弾、チーズタイプが新登場。辛ラーメンの”うまからっ！”な味わいに濃厚なチーズが加わることでさらにやみつきな味わいに進化。チーズのマイルドさによって、通常の辛ラーメン焼きそばよりも辛さ抑えめのため、より幅広い方達にお楽しみいただきやすい味になっています。', food_category_id: 2, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/06_辛ラーメン焼きそば_チーズ_袋麺.jpg')))
  Food.create(id: 7, name: 'ノグリラーメン 袋麺', spice_level: '2', price: '212', title: '麺はコシのある太い麺、もちもちとした食感とうどんのような食べ応え。', body: 'スープは唐辛子と貝、いか、えび、かつおなどさまざまな海鮮でだしをとった海鮮スープで、辛いながらもさっぱりした味が特徴です。具材は大きい昆布とわかめ、いか、にんじんを入れ、海鮮の旨味をアップしています。ブランドネームの「ノグリ」は麺が丸くてぽっちゃりした感じが狸(韓国語ではノグリ)をイメージするということでネーミングされたものです。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/07_ノグリラーメン_袋麺.jpg')))
  Food.create(id: 8, name: 'ノグリラーメン マイルド 袋麺', spice_level: '1', price: '212', title: '辛さ抑えめ。マイルドタイプのノグリラーメン。', body: '唐辛子と貝、いか、えび、マグロなど、さまざまな海鮮でだしをとった海鮮スープで、さっぱりした味が特徴です。通常の「ノグリラーメン（通称：ノグリHOT）」に比べて、辛さは抑えめ。具材は大きい昆布とわかめ、かまぼこ、にんじんを入れ、海鮮の旨味をアップ。麺はコシのある太い麺、もちもちとした食感とうどんのような食べ応え。ブランドネームの「ノグリ」は麺が丸くてぽっちゃりした感じが狸（韓国語ではノグリ）をイメージするということでネーミングされたものです。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/08_ノグリラーメン_マイルド_袋麺.png')))
  Food.create(id: 9, name: 'ノグリ 旨辛焼きちゃんぽん 袋麺', spice_level: '4', price: 'null', title: 'もちもちした太麺に海鮮のコクと唐辛子がきいた、旨辛な汁なし麺。', body: 'コシのあるもちもちとした太麺はうどんのような食べ応え。 大きい昆布やわかめ、いか、にんじんなど、具もたっぷり入ってボリューム満点。 貝、いか、えび、かつおなどさまざまな海鮮の旨みとコクにピリッと唐辛子がきいた旨辛味が後を引く美味しさです。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/09_ノグリ_旨辛焼きちゃんぽん_袋麺.jpg')))
  Food.create(id: 10, name: 'チャーワン 袋麺', spice_level: '1', price: 'null', title: 'お店で食べるような風味を再現、韓国風プレミアムジャージャン麺。', body: '甘味のあるソースはマイルドでありながら濃厚。昆布粉末を練り込んだ、独自製法のもちもち太麺はインスタントとは思えない食感です。 玉ねぎ、キャベツ、じゃがいも、エンドウ豆などの食べ応えのある大きな具材はソースとの相性も抜群です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/10_チャーワン_袋麺.jpg')))
  Food.create(id: 11, name: 'チャパグリ カップ', spice_level: '2', price: 'null', title: '韓国風ジャージャン麺「チャパゲティ」と海鮮風味の「ノグリ」をMIXした甘辛な汁なし麺。', body: '「チャパゲティ」の独特で香ばしい濃厚ソース、「ノグリ」の大きい昆布やさまざまな海鮮の旨みとコクに、唐辛子のピリっとした辛さが後を引く美味しさ。コシのある麺はモチモチとした食感とうどんのような食べ応え。「ノグリ」は麺が丸くてぽっちゃりした感じが狸(韓国語ではノグリ)をイメージするということでネーミングされたものです。', food_category_id: 2, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/11_チャパグリ_カップ.png')))
  Food.create(id: 12, name: 'Angryチャパグリ カップ', spice_level: '4', price: 'null', title: 'クセになる辛さ！激辛版「チャパグリ」。「チャパゲティ」＋「ノグリ」をMIXした甘辛な汁なし麺。', body: '韓国風ジャージャン麺「チャパゲティ」の独特で香ばしい濃厚ソース、「ノグリ」の大きい昆布やさまざまな海鮮の旨みとコクに、唐辛子の激辛な刺激がやみつき味。コシのある麺はモチモチとした食感とうどんのような食べ応え。「ノグリ」は麺が丸くてぽっちゃりした感じが狸(韓国語ではノグリ)をイメージするということでネーミングされたものです。', food_category_id: 2, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/12_Angryチャパグリ_カップ.png')))
  Food.create(id: 13, name: 'ふるる冷麺 ビビン冷麺', spice_level: '3', price: '277', title: '特製ビビンジャンは、熟成したコチュジャンの旨味としっかりした辛さに加え、梨ピューレの爽やかな甘みとリンゴ酢のほのかな酸味。本場のビビン麺を再現しています。', body: '本格的な冷麺を手軽に楽しめるように乾麺パスタとラーメン製造のノウハウを元に農心独自技術で開発を進めました。伝統的な「押し出し製法」と熱風で乾燥させて仕上げるノンフライ麺は、極細でもコシのあるつるつるとした本場の食感を再現し、2009年常温保存が可能な本格冷麺として発売致しました。「ふるる」は「スルスル、チュルチュル」といった韓国の擬態語。麺を啜る爽やかな音をブランド名にしています。2023年9月に行われた『ジャパン・フード・セレクション』で最高評価の「グランプリ」を受賞しました。', food_category_id: 6, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/13_ふるる冷麺_ビビン冷麺.jpg')))
  Food.create(id: 14, name: 'ベホンドン ビビン麺 袋麺', spice_level: '2', price: '232', title: '韓国で発売から4週間で700万食を販売し、ブームを巻き起こした大ヒット冷やしビビン麺。', body: 'さっぱりピリ辛でやみつきになる、冷やしビビン麺（まぜ麺）。「ベホンドン」とは「べ」：梨（＝甘い）、「ホン」：赤唐辛子（＝ピリ辛）、「ドン」：ドンチミ（＝ほのかな酸味）の頭文字をとったものです。通常、りんごが使われることが多いビビンジャンに梨を使うことで、さっぱりとした酸味と甘みが特徴に。さらに熟成コチュジャンがコクをプラス。味わい深く、しっかり辛い本場の味のビビン麺となっています。', food_category_id: 2, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/14_ベホンドン_ビビン麺_袋麺.jpg')))
  Food.create(id: 15, name: 'カムジャ麺 袋麺', spice_level: '1', price: '236', title: '韓国旅行時に必ず購入する、日本人観光客に愛されている商品。', body: '麺にジャガイモでん粉やジャガイモ粉末を50%以上使用したもちもちとした麺の食感が絶品です。 スープは胡椒のスパイスが効いたピリ辛スープ、かやくとしてキャベツ、チンゲンサイを使用しています。 カムジャは韓国語でジャガイモの意味です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/15_カムジャ麺_袋麺.png')))
  Food.create(id: 16, name: '安城湯麺 袋麺', spice_level: '1', price: '212', title: 'ビーフスープの旨味とさっぱりとした辛さ。韓国ラーメンの定番です。', body: '牛骨と肉が溶けだした深い味に、韓国味噌と唐辛子が調和された韓国ならではの旨味をそのまま生かした商品。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/16_安城湯麺_袋麺.png')))
  Food.create(id: 17, name: '旨辛海鮮ちゃんぽん 袋麺', spice_level: '4', price: 'null', title: '太麺にからむ海鮮の旨みがきいた、中華風の本格高級ちゃんぽん。', body: '刻まれた溝がスープを絡めとり、味なじみの良い、こだわりの太麺。牛肉、豚肉のエキスにたっぷり加えた海鮮の旨みが深い味わいを引き出し、本格的な高級中華の味を再現。まるで炒めたたてのような香ばしい風味とピリ辛スープがクセになる美味しさです。', food_category_id: 6, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/17_旨辛海鮮ちゃんぽん_袋麺.jpg')))
  Food.create(id: 18, name: 'いかチャンポン 袋麺', spice_level: '3', price: '236', title: 'いか、えびなどのスープに肉の旨味が調和して、辛みと具だくさんの海鮮チャンポンです。', body: 'たっぷり入っている海鮮と野菜の具が絶妙にマッチする。 辛くて旨味がある味わいのチャンポン味を再現した商品です。', food_category_id: 6, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/18_いかチャンポン_袋麺.jpg')))
  Food.create(id: 19, name: 'ユッケジャンラーメン カップ', spice_level: '2', price: 'null', title: '韓国伝統のユッケジャン味を再現したカップラーメン。', body: '1982年に農心初の容器タイプラーメンとして韓国で発売し、以降約40 年間にわたり、人気のロングセラー商品。唐辛子の辛さが効いた韓国伝統のユッケジャンを再現した味で、麺とスープの相性も抜群。麺はなめらかな口当たりとしなやかなコシを併せ持った細麺です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/19_ユッケジャンラーメン_カップ.jpg')))
  Food.create(id: 20, name: '農心 キムチサバル麺 カップ', spice_level: '2', price: 'null', title: '韓国人におなじみの「キムチチゲ」の味を手軽に味わえるロングセラー商品。', body: '「サバル ＝ どんぶり」タイプのカップ麺として、1986年の発売以来、長年韓国で愛され続けている人気商品。昔ながらのインスタント麺らしい細麺と、程よくキムチの酸味が感じられ、さっぱりとして食べやすいピリ辛スープの組み合わせ。同じサバル麺の「ユッケジャンラーメン」同様に、韓国ドラマにも度々登場するなど、韓国カップ麺の中でも特に高い人気を誇る商品がついに日本でも発売です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/20_農心_キムチサバル麺_カップ.jpg')))
  Food.create(id: 21, name: '甘辛ヤンニョムチキンビビン麺 カップ', spice_level: '4', price: 'null', title: '韓国の定番料理ヤンニョムチキンをカップ麺で再現した甘辛いビビン麺。', body: 'ヤンニョムのコチュジャン、胡椒、にんにく、生姜などのスパイシーな辛さ、ケチャップの優しい酸味、ハチミツやリンゴのフルーティで自然な甘みで、飽きのこない甘辛ソースが絶品です。トッピングの香ばしいピーナッツ、パセリがアクセントに。', food_category_id: 6, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/foods/21_甘辛ヤンニョムチキンビビン麺_カップ.png')))

  # Userモデル登録（8/12追加）
  User.create(id: 1, name: '重岡大毅', email: 'shigeoka_daiki@west.com', password: 'password', password_confirmation: 'password', comment: '重岡大毅です。', profile_image: File.open(Rails.root.join('db/seeds/users/ichigo.png')))
  User.create(id: 2, name: '桐山照史', email: 'kiriyama_akito@west.com', password: 'password', password_confirmation: 'password', comment: '桐山照史です。', profile_image: File.open(Rails.root.join('db/seeds/users/hotdog.png')))
  User.create(id: 3, name: '中間淳太', email: 'nakama_junta@west.com', password: 'password', password_confirmation: 'password', comment: '中間淳太です。', profile_image: File.open(Rails.root.join('db/seeds/users/penpen.png')))
  User.create(id: 4, name: '神山智洋', email: 'kamiyama_tomohiro@west.com', password: 'password', password_confirmation: 'password', comment: '神山智洋です。', profile_image: File.open(Rails.root.join('db/seeds/users/piyotish.png')))
  User.create(id: 5, name: '藤井流星', email: 'fuji_ryusei@west.com', password: 'password', password_confirmation: 'password', comment: '藤井流星です。', profile_image: File.open(Rails.root.join('db/seeds/users/kawausopiyo.png')))
  User.create(id: 6, name: '濵田崇裕', email: 'hamada_takahiro@west.com', password: 'password', password_confirmation: 'password', comment: '濵田崇裕です。', profile_image: File.open(Rails.root.join('db/seeds/users/kanipiyo.png')))
  User.create(id: 7, name: '小瀧望', email: 'kotaki_nozomu@west.com', password: 'password', password_confirmation: 'password', comment: '小瀧望です。', profile_image: File.open(Rails.root.join('db/seeds/users/kirin-piyotaso.png')))

  # Reviewモデル（8/13追加）
  Review.create(id: 1, title: 'めっちゃ美味しい1', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 1)
  Review.create(id: 2, title: 'めっちゃ美味しい2', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 2)
  Review.create(id: 3, title: 'めっちゃ美味しい3', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 3)
  Review.create(id: 4, title: 'めっちゃ美味しい4', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 4)
  Review.create(id: 5, title: 'めっちゃ美味しい5', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 5)
  Review.create(id: 6, title: 'めっちゃ美味しい6', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: 1, user_id: 6)
  Review.create(id: 8, title: 'ああああああああああああああああああああ', rating: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, animi officiis veniam est, modi soluta non impedit consequuntur cupiditate exercitationem expedita porro. Architecto a ab, beatae pariatur sequi ipsa facilis?', spice_level: 4, food_id: 1, user_id: 7)
end
