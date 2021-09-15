# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## users テーブル
| Column             | Type    | Options                   |
| ------------------ | ------  | -----------               |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| birthday           | date    | null: false               |
| genre_id           | integer | null: false               | 

### Association

- has_many :review
- has_many :comment

## reviews テーブル
| Column             | Type       | Options      |
| ------------------ | ------     | -----------  |
| title              | string     | null: false  |
| genre_id           | integer    | null: false  | 
| detail             | string     | null: false  |
| directer           | string     | null: false  |
| starring           | date       | null: false  |
| rate               | float      | null: false  |
| user               | references | null: false  |

### Association

- belongs_to :user
- has_many :comment

## comments テーブル
| Column   | Type       | Options     |
| ---------| ------     | ----------- |
| text     | text       | null: false |
| user     | references | null: false | 
| review   | references | null: false |

### Association

- belongs_to :user
- belongs_to :review