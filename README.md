# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, default: "", unipue: true|
|password|string|null: false, default: ""|
|avatar|text||
|profile_comment|text||
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|tel|string|unique: true|
|birthday|date|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|number|string|null: false|
|building|string||

### Association(user)
- has_many :scores
- has_many :likes
- has_many :items


## sizesテーブル

|Colum|Type|Option|
|-----|----|------|
|type|integer|default: 0, null: false|

### Association(size)
- has_many :items


## shipping_datesテーブル

|Colum|Type|Option|
|-----|----|------|
|day|integer|null: false|

### Association(shippng_date)
- has_many :items


## regionsテーブル

|Colum|Type|Option|
|-----|----|------|
|name|integer|null: false|

### Association(regions)
- has_many :items


## ship_methodsテーブル

|Colum|Type|Option|
|-----|----|------|
|type|integer|null: false|

### Association(ship_method)
- has_many :items

## delivery_feesテーブル

|Colum|Type|Option|
|-----|----|------|
|type|integer|null: false|

### Association(delivery_fee)
- has_many :items

## categoriesテーブル

|Colum|Type|Option|
|-----|----|------|
|name|string|null:false|
|parent_id|integer||

### Association(category)
- has_many :items


## brandsテーブル

|Colum|Type|Option|
|-----|----|------|
|name|string|null: false|

### Association(brand)
- has_many :items

## conditionsテーブル

|Colum|Type|Option|
|-----|----|------|
|type|integer|null: false|

### Association(condition)
- has_many :items


## itemsテーブル

|Colum|Type|Option|
|-----|----|------|
|name|string|null: false|
|price|integer|null: false|
|description|text|null: false|
|transaction|string||
|buyer_id|integer||
|saler_id|integer||
|category_id|references|foreign_key: true|
|shipping_date_id|references|foreign_key: true|
|condition_id|references|foreign_key: true|
|region_id|references|foreign_key: true|
|delivery_fee_id|references|foreign_key: true|
|ship_method_id|references|foreign_key: true|
|bland_id|references|foreign_key: true|
|size_id|references|foreign_key: true|

### Association(item)
- belongs_to :user
- belongs_to :size
- belongs_to :shipping_date
- belongs_to :condition
- belongs_to :region
- belongs_to :ship_method
- belongs_to :delivery_fee
- belongs_to :category
- belongs_to :brand
- has_many :item_photos
- has_many :likes


## item_photosテーブル

|Colum|Type|Option|
|-----|----|------|
|photo|text|null: false|
|item_id|references|foreign_key: true|


### Association(item_photo)
- belongs_to: item


## likesテーブル

|Colum|Type|Option|
|-----|----|------|
|user_id|references|foreign_key: true|
|item_id|references|foreign_key: true|

### Association(like)
- belongs_to: user
- belongs_to: item


## scoresテーブル

|Colum|Type|Option|
|-----|----|------|
|type|integer|null: false|
|user_id|references|foreign_key: true|

### Association(score)
- belongs_to: user

