module RobotPayment
  module ApiError
    MERCHANT_DIFINITIONS = {
      'ER000' => '決済システム内部エラー(例外)',
      'ER001' => 'リクエストエラー(ゲートウェイ等例外)',
      'ER002' => '決済送信元URLエラー',
      'ER003' => '決済送信元IPエラー',
      'ER004' => '未登録店舗',
      'ER005' => '未登録商品',
      'ER006' => '発行可能ID/PWなし',
      'ER010' => '決済処理が込み合ってます。',
      'ER011' => '決済拒否-IP アドレス',
      'ER012' => '決済拒否-メールアドレス',
      'ER013' => '決済拒否-カード番号',
      'ER014' => 'クレジットカードチェックデジットエラー',
      'ER015' => '未取り扱いカード(カードタイプエラー)',
      'ER016' => 'ご利用可能金額上限',
      'ER017' => 'お取り扱いできない金額(決済金額下限)',
      'ER018' => 'お取り扱いできない金額(決済金額上限)',
      'ER019' => '分割払いエラー',
      'ER021' => 'ワンタッチ課金:決済条件エラー',
      'ER022' => 'クイックチャージ:決済条件エラー',
      'ER023' => 'カード情報変更:情報変更可能条件エラー',
      'ER024' => '自動課金停止中エラー(ゲートウェイ)',
      'ER030' => '決済失敗(すべて)',
      'ER031' => '有効性確認失敗(CEHCK)',
      'ER032' => '実売上失敗(SALES)',
      'ER033' => '取消失敗',
      'ER042' => '通信エラー',
      'ER050' => '店舗IDエラー',
      'ER051' => 'ジョブコードエラー',
      'ER052' => '決済結果通知方法エラー',
      'ER053' => '決済番号エラー',
      'ER054' => 'オーダーコードエラー',
      'ER055' => 'クレジットカード番号エラー',
      'ER056' => '有効期限エラー',
      'ER057' => '名前エラー',
      'ER058' => '苗字エラー',
      'ER059' => 'メールアドレスエラー',
      'ER060' => '電話番号エラー',
      'ER061' => '商品金額エラー',
      'ER062' => '税金額エラー',
      'ER063' => '送料エラー',
      'ER064' => '支払い方法エラー',
      'ER065' => '分割回数エラー',
      'ER068' => '商品コードエラー',
      'ER069' => 'コマンドコードエラー',
      'ER072' => '自動課金番号エラー',
      'ER079' => 'セキュリティーコードエラー',
      'ER107' => 'リクエストメソッドエラー',
      'ER114' => '店舗ID指定エラー',
      'ER119' => '店舗ID指定エラー',
      'ER125' => '次回課金日エラー',
      'ER126' => '課金周期エラー',
      'ER127' => '課金指定日エラー',
      'ER128' => '課金停止回数エラー',
      'ER129' => '課金終了日エラー',
      'ER554' => '新自動課金未設定エラー',
      'ER564' => 'カード決済サービス未契約',
      'ER565' => 'トークン決済AES暗号化キー未発行',
      'ER567' => 'RSA暗号化キー未発行',
      'ER570' => '課金周期パラメータエラー',
      'ER571' => '自動課金ジョブタイプエラー',
      'ER572' => 'お試し期限エラー',
      'ER573' => '自動課金金額エラー',
      'ER574' => '自動課金下限金額エラー',
      'ER581' => '自動課金下限金額エラー',
      'ER575' => '自動課金上限金額エラー',
      'ER582' => '自動課金上限金額エラー',
      'ER576' => '課金日指定エラー',
      'ER577' => 'お試し日数エラー',
      'ER578' => 'お試し月数エラー',
      'ER579' => 'お試し期限エラー',  # same with ER572 ?
      'ER580' => 'お試し金額エラー',
      'ER583' => 'トークン未設定',
      'ER584' => 'トークン情報無効',
      'ER585' => 'トークン有効期限切れ',
      'ER586' => 'トークン決済-カード番号送信エラー',
      'ER902' => '郵便番号エラー',
      'ER903' => '名前エラー',
      'ER904' => '住所エラー',
      'ER905' => '支払期限制限エラー',
      'ER900' => '3Dセキュアエラー',
      'ER901' => '3Dセキュアエラー',
      'ER998' => 'アカウント停止中',
      'ER999' => 'メンテナンス中'
    }
    CREDIT_UNION_DIFINITIONS = {
      'G0442G040000' => '残高不足エラー',
      'G1242G120000' => '取扱不可カード',
      'G3042G300000' => '取扱不可カード',
      'G4242G420000' => '暗証番号エラー',
      'G4442G440000' => 'セキュリティコード不正エラー',
      'G4542G450000' => 'セキュリティコードエラー',
      'G5442G540000' => '取扱不可カード',
      'G5542G550000' => '限度額オーバー',
      'G5642G560000' => 'カード読込エラー',
      'G6042G600000' => '事故カード',
      'G6142G610000' => '無効カード',
      'G6542G650000' => '会員番号エラー',
      'G6842G680000' => '金額エラー',
      'G6942G690000' => '税送料エラー',
      'G7442G740000' => '分割回数エラー',
      'G7842G780000' => '支払区分エラー',
      'G8042G800000' => '取消区分エラー',
      'G8342G830000' => '有効期限エラー',
      'G9742G970000' => '取扱不可カード',
      'G9842G980000' => '取扱不可カード',
      'G9942G990000' => '取扱不可カード'
    }
    API_DIFINITIONS = MERCHANT_DIFINITIONS.merge(CREDIT_UNION_DIFINITIONS)
  end
end