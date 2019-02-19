portfolio DB設計
---
## user_group-table
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false|
|group_id|string|null: false|

### Asociation
- belongs_to :group
- belongs_to :user
---

## user-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|

### Asociation
- has_many :groups, though: :user_group
- has_many :user_groups
- has_many :tweets
- has_many :messages
- has_many :articles
---

## group-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Asociation
- has_many :messages
- has_many :users, though: :user_group
- has_many :user_groups
---

## message-table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false|
|group_id|integer|null: false|

### Asociation
- belongs_to :user
- belongs_to :group
---

## article-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false|

### Asociation
- belongs_to :user
---

## tweet-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false|

### Asociation
- belongs_to :user
---
