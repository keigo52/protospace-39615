## テーブル設計

### userテーブル

| 列名                 | データ型    | NULL制約 | 制約       |
|---------------------|------------|---------|------------|
| email               | string     | NOT NULL| ユニーク制約 |
| encrypted_pass_word | string     | NOT NULL|            |
| name                | string     | NOT NULL|            |
| profile             | text       | NOT NULL|            |
| occupation          | text       | NOT NULL|            |
| Position            | text       | NOT NULL|            |
 
### prototypesテーブル

| 列名             | データ型    | NULL制約 | 制約       |
|-----------------|------------|---------|------------|
| title           | string     | NOT NULL|            |
| catch_copy      | text       | NOT NULL|            |
| concept         | text       | NOT NULL|            |
| user            | references | NOT NULL| 外部キー    |

### commentsテーブル

| 列名             | データ型    | NULL制約 | 制約       |
|-----------------|------------|---------|------------|
| content         | text       | NOT NULL|            |
| prototype       | references | NOT NULL| 外部キー    |
| user            | references | NOT NULL| 外部キー    |
