```ruby
  has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
```

1. user A follows user B ->
- user A has active relationship with user B
- user B has passive relationship with user A
2. relationship table
- follower_id: user A
- followed_id: user B
3. has_many relationships
- 1 user can follow many other users -> 1 user has_many active_relationships
- 1 user can be followed by many other users -> 1 user has_many passive_relationships
4. foreign_key
- active_relationship: identify by follower_id (the user initiated relationship)
- passive_relationship: identify by followed_id (the user be ininiated relationship)
5. class_name: The table contains relationship (which is 'relationship')
6. @user.following:
- Through active_relationships, the list of people who @user follows is following_list, which is followed_id column in 'relationship' table where id = @user.id
7. @user.followers:
- Through passive_relationships, the list of people who follow @user is followers_list, which is follower_id column in 'relationship' table where id = @user.id 

