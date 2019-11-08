INSERT INTO products
    ("id", "name", "version", "created_at", "updated_at")
VALUES
    (1, 'スターダストクルセイダーズ', 3, current_timestamp, current_timestamp),
    (2, 'ダイヤモンドは砕けない', 4, current_timestamp, current_timestamp);

INSERT INTO heros
    ("id", "product_id", "name", "stand", "created_at", "updated_at")
VALUES
    (1, 1, '空条承太郎', 'スタープラチナ', current_timestamp, current_timestamp),
    (2, 1, 'ジョセフ・ジョースター', 'ハーミットパープル', current_timestamp, current_timestamp),
    (3, 1, 'ポルナレフ', 'シルバーチャリオッツ', current_timestamp, current_timestamp),
    (4, 2, '東方仗助', 'クレイジーダイアモンド', current_timestamp, current_timestamp),
    (5, 2, '虹村億泰', 'ザ・ハンド', current_timestamp, current_timestamp),
    (6, 2, '広瀬康一', 'エコーズ', current_timestamp, current_timestamp);

INSERT INTO enemies
    ("id", "product_id", "name", "stand", "created_at", "updated_at")
VALUES
    (1, 1, 'ディオ・ブランドー', 'ザ・ワールド', current_timestamp, current_timestamp),
    (2, 2, '吉良吉影', 'キラークイーン', current_timestamp, current_timestamp);
