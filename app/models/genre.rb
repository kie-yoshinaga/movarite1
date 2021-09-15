class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'アニメ' },
    { id: 4, name: 'コメディ' },
    { id: 5, name: 'ドキュメンタリー' },
    { id: 6, name: 'ドラマ' },
    { id: 7, name: 'ファンタジー' },
    { id: 8, name: 'ホラー' },
    { id: 9, name: '戦争' },
    { id: 10, name: 'ミステリー' },
    { id: 11, name: 'ロマンス' },
    { id: 12, name: 'SF' },
    { id: 13, name: 'その他' },
  ]

  extend ActiveHash::Associations::ActiveRecordExtensions 

  include ActiveHash::Associations
    has_many :reviews
    #has_one :users
end
