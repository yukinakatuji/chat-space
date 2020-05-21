# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true, unique: true|
|group_id|integer|null: false, foreign_key: true, unique: true|

### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|message||text|
|image||string|
|user_id|integer|null: false, foreign_key: true, unique: true|
|group_id|integer|null: false, foreign_key: true, unique: true|

### Association
- belongs_to :user
- belongs_to :group

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e_mail|string|null: false,　unique: true|
|passward|string|null: false|

### Association
- has_many :messages
- has_many :groups. through: :groups_users
- has_many :groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :users. thougth: :groups_users
- has_many :groups_users

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
