# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'demo', email:'demo@example.com',password: 'demo',password_confirmation: 'demo')
User.create!(name: 'admin', email: 'admin@example.com', password: '567890as',password_confirmation: '567890as', role: 1)

Area.create!(name: '渋谷')
Area.create!(name: '新宿')
Area.create!(name: '池袋')
Area.create!(name: '表参道')
Area.create!(name: '代官山')

Feature.create!(feature_type: 'コーヒースタンド')
Feature.create!(feature_type: 'テラス席')
Feature.create!(feature_type: '豆販売')
Feature.create!(feature_type: '禁煙')
Feature.create!(feature_type: 'フードも◎')

Store.create!(name: 'THE ROASTERY', address: '東京都渋谷区神宮前5-17-13', closing_day: '', tel: '03-6450-5755',opening_hours: '10:00',closing_hours: '20:00', area_id: 4, feature_ids: [2,3,4,5])
Store.create!(name: 'ALL SEASONS COFFEE',  address: '東京都新宿区新宿2-7-7 1F', closing_day: '' , tel: '03-5341-4273',opening_hours: '9:00',closing_hours: '19:00', area_id: 2, feature_ids: [3,5])
Store.create!(name: 'THE LOCAL TOKYO',  address: '東京都渋谷区神宮前5-30-3 ニューアートビル 2F',closing_day: '', tel: '03-3409-8227',opening_hours: '12:00',closing_hours: '17:30', area_id: 1, feature_ids: [3,5])
Store.create!(name: 'Roasted COFFEE LABORATORY 渋谷神南店',  address: '東京都渋谷区神南1-6-3 フラッグ 1F',closing_day: '', tel: '03-5428-3658',opening_hours: '9:00', closing_hours: '19:00', area_id: 1, feature_ids: [2])
Store.create!(name: 'ABOUT LIFE COFFEE BREWERS',  address: '東京都渋谷区道玄坂1-19-8',closing_day: '', tel: '070-5587-5342',opening_hours: '8:30', closing_hours: '20:30', area_id: 1, feature_ids: [1,3])
Store.create!(name: 'PELLS coffee&bar', address: '東京都渋谷区鴬谷町3-4 ピンキーハウス1-B', closing_day: '', tel: '03-6416-4383',opening_hours: '10:00', closing_hours: '18:00', area_id: 1, feature_ids: [2,3,5])
Store.create!(name: 'REC COFFEE 渋谷東店',  address: '東京都渋谷区東1丁目4-1 尚豊ビル1F', closing_day: '不定休', tel: '03-6427-1277',opening_hours: '11:00', closing_hours: '20:00', area_id: 1 , feature_ids: [2,5])
Store.create!(name: 'Coffee Wrights 表参道',  address: '東京都渋谷区神宮前4-9-13 ミナガワビレッジ#5', closing_day: '', tel: '03-6804-3163',opening_hours: '11:00', closing_hours: '18:00', area_id: 4, feature_ids: [2,4,5])
Store.create!(name: 'SHOZO COFFEE STORE 北青山店',  address: '東京都港区北青山3-10-15', closing_day: '', tel: '03-4500-1228',opening_hours: '9:00', closing_hours: '19:00', area_id: 4, feature_ids: [2,3,4,5])
Store.create!(name: 'Cafe Kitsune Aoyama', address: '東京都港区南青山3-15-9', closing_day: '', tel: '03-5786-4842',opening_hours: '10:00', closing_hours: '19:00', area_id:4 , feature_ids: [2,4,5])
Store.create!(name: 'LATTEST', address: '東京都渋谷区神宮前3-5-2 EFビル1F',closing_day: '', tel: '03-3478-6276',opening_hours: '10:00', closing_hours: '19:00', area_id: 4, feature_ids: [2,3,4,5])
Store.create!(name: 'Little Darling Coffee Roasters', address: '東京都港区南青山1-12-32カフェ棟1F', closing_day: '', tel: '03-6438-9844',opening_hours: '8:00', closing_hours: '20:00', area_id:4 , feature_ids: [2,3,5])
Store.create!(name: 'it COFFEE',  address: '東京都渋谷区恵比寿1-34-28代官山ファーストビル1F', closing_day: '', tel: '03-6455-3390',opening_hours: '8:00', closing_hours: '21:00', area_id:5 , feature_ids: [2,3,4,5])
Store.create!(name: 'COUNTERPART COFFEE GALLERY',  address: '東京都渋谷区本町3-12-16',closing_day: '', tel: '03-3378-0577',opening_hours: '7:30', closing_hours: '21:00', area_id:2 , feature_ids: [3,5])
Store.create!(name: 'ダブルトールコーヒー 新宿御苑',  address: '東京都新宿区新宿１丁目２３−１１ 御苑メインビル 101',closing_day: '日曜', tel: '03-6457-8715',opening_hours: '8:00',closing_hours: '21:00', area_id:2 , feature_ids: [1,3,5])
Store.create!(name: 'A FEW WORDS COFFEE',  address: '東京都新宿区新宿7-24-4', closing_day: '火曜、隔週土曜、その他不定休あり', tel: '',opening_hours: '8:00', closing_hours: '19:00', area_id:2 , feature_ids: [3])
Store.create!(name: '炭火焼珈琲 蔵 ',  address: '東京都豊島区西池袋１丁目３９−１',closing_day: '', tel: '050-5456-9128',opening_hours: '9:00', closing_hours: '21:00', area_id:3 , feature_ids: [5])

Coffee.create!(producing_area: 'ブラジル')
Coffee.create!(producing_area: 'コロンビア')
Coffee.create!(producing_area: 'エチオピア')
Coffee.create!(producing_area: 'ハワイ')
Coffee.create!(producing_area: 'インドネシア')
