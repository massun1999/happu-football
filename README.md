# テーブル設計

## usersテーブル

| Column    | Type   | Option      |
|-----------|--------|-------------|
| name      | string | null: false |

### association
 - has_many :columns
 - has_many :schedules
 - has_many :threads

## Columnsテーブル

| Column   | Type       | Option                         |
|----------|------------|--------------------------------|
| text     | text       | null: false                    |
| user_id  | references | null: false, foreign_key: true |

### association

- belongs_to :user

## Threadsテーブル

| Column  | Type       | Option                         |
|---------|------------|--------------------------------|
| content | text       | null: false                    |
| user_id | references | null: false, foreign_key: true |

### association

- belongs_to :user

## Schedulesテーブル

| Column   | Type               | option     |
|----------|--------------------|------------|
| date     | string             | null:false |
| event    | string             | null:false |

### association

- belongs_to :user