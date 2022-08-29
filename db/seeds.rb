# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  { name: 'runteq', email:'runteq@example.com',password: '1111',password_confirmation: '1111' },
  { name: 'runteq2', email:'runteq2@example.com',password: '2222',password_confirmation: '2222' },
  { name: 'runteq3', email:'runteq3@example.com',password: '3333',password_confirmation: '3333' }
  )

Area.create!(
  {name: '渋谷'},
  {name: '新宿'},
  {name: '池袋'},
  {name: '表参道'},
  {name: '代官山'}
  )

Store.create!(
  {name: 'THE ROASTERY', address: '東京都渋谷区神宮前5-17-13', tel: '03-6450-5755',
   opening_hours: '10:00',closing_hours: '20:00', area_id: 4, feature_ids: [2]},
  {name: 'ALL SEASONS COFFEE',  address: '東京都新宿区新宿2-7-7 1F', tel: '03-5341-4273',
   opening_hours: '9:00',closing_hours: '19:00', area_id: 2, feature_ids: []},
  {name: 'THE LOCAL TOKYO',  address: '東京都渋谷区神宮前5-30-3 ニューアートビル 2F', tel: '03-3409-8227',
   opening_hours: '12:00',closing_hours: '17:30,18:30', area_id: 1, feature_ids: []},
  {name: 'Roasted COFFEE LABORATORY 渋谷神南店',  address: '東京都渋谷区神南1-6-3 フラッグ 1F', tel: '03-5428-3658',
   opening_hours: '9:00,10:00',closing_hours: '19:00', area_id: 1, feature_ids: [2,3]},
  {name: 'ABOUT LIFE COFFEE BREWERS',  address: '東京都渋谷区道玄坂1-19-8', tel: '070-5587-5342',
   opening_hours: '8:30',closing_hours: '20:30', area_id: 1, feature_ids: [1]}
   )

Coffee.create!(
  {producing_area: 'ブラジル'},
  {producing_area: 'コロンビア'}.
  {producing_area: 'エチオピア'},
  (producing_area: 'ハワイ'),
  {producing_area: 'インドネシア'}
  )

ArticleCoffee.create!(
  {article_id: 1, coffee_id: 1},
  {article_id: 2, coffee_id: 2},
  {article_id: 3, coffee_id: 3}
  )

Feature.create!(
  {feature_type: 'コーヒースタンド'},
  {feature_type: 'テラス席あり'},
  {feature_type: '喫煙可'}
  )