class Work < ActiveHash::Base
  self.data = [
      {id: 1, name: '入居'}, {id: 2, name: '転出'}, {id: 3, name: '工事'},
      {id: 4, name: 'メーター交換'}, {id: 5, name: 'その他'}
  ]
end